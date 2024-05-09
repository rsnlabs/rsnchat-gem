#!/usr/bin/env ruby

require 'rest-client'
require 'json'
require 'colorize'

class RsnChat
  def initialize(api_key)
    raise 'Please provide an API key' unless api_key

    @api_key = api_key
  end

  def validate_api_key(api_key)
    begin
      payload = { key: api_key }.to_json
      headers = { content_type: :json }

      response = RestClient.post('https://api.rsnai.org/api/v1/user/validate', payload, headers)
    
      return response if response.code == 200

      handle_error_response(response.code)
    rescue RestClient::ExceptionWithResponse => e
      handle_error_response(e.response.code)
    end
  end

  def gpt(prompt)
    call_chat_method('gpt', prompt)
  end

  def bard(prompt)
    call_chat_method('bard', prompt)
  end

  def openchat(prompt)
    call_chat_method('openchat', prompt)
  end

  def llama(prompt)
    call_chat_method('llama', prompt)
  end

  def gemini(prompt)
    call_chat_method('gemini', prompt)
  end

  def mixtral(prompt)
    call_chat_method('mixtral', prompt)
  end

  private

  def call_chat_method(method, prompt)
    begin
      payload = { prompt: prompt }
      headers = { Authorization: "Bearer #{@api_key}", content_type: :json }

      response = RestClient.post("https://api.rsnai.org/api/v1/user/#{method}", payload.to_json, headers)
      return JSON.parse(response.body)
    rescue RestClient::ExceptionWithResponse => e
      raise "RsnChat #{method.capitalize} Error: #{e.response}"
    end
  end

  def handle_error_response(status)
    case status
    when 403
      puts 'Invalid API key. Please try again.'.red
    when 503
      puts 'Service Unavailable - Maintain Mode'.red
    else
      puts "Unexpected response from the server. Status: #{status}. Please try again.".red
    end
    prompt_api_key
  end
end

def prompt_api_key
  puts_ascii_art

  print('Enter your API key: '.green)
  api_key = gets.chomp

  begin
    response = RsnChat.new('').validate_api_key(api_key)

    if response&.code == 200
      username = response.body['user']
      rsn_chat = RsnChat.new(api_key)
      start_chat(rsn_chat, response)
    else
      handle_error_response(response&.code)
    end
  rescue RuntimeError => e
    puts e.message.red
    prompt_api_key
  end
end

def puts_ascii_art
  puts "
                      ##                
####               #### ##           ##   
##  #  #### # ##  ### # ## #   ###  ##### 
##  # ##    ## ## ##    #####    ##  ##   
####  ####  ## ## ##    ## ##  ####  ##   
## #   #### ## ## ##    ## ## ## ##  ##   
##  #    ## ## ## ###   ## ## ## ##  ##   
##  # ####  ## ##  #### ## ##  ## #   ### 
".green.bold
end

def start_chat(rsn_chat, response)
  response_body = JSON.parse(response.body) rescue nil
  if response_body && response_body['success']
    username = response_body['user']
    puts "\nWelcome to #{username}'s RsnChat CLI!\n".yellow
    prompt_chat_method(rsn_chat)
  else
    handle_error_response(response&.code)
  end
end

def prompt_chat_method(rsn_chat)
  print('Select a chat method (GPT, BARD, OPENCHAT, LLAMA, GEMINI, MIXTRAL), or type "exit" to exit: '.cyan)
  method = gets.chomp.upcase

  case method
  when 'EXIT'
    puts "\nExiting RsnChat CLI. Goodbye!\n".yellow
  when 'GPT', 'BARD', 'OPENCHAT', 'LLAMA', 'GEMINI', 'MIXTRAL'
    prompt_user(method, rsn_chat)
  else
    puts 'Invalid chat method. Please select GPT, BARD, OPENCHAT, LLAMA, GEMINI, MIXTRAL, or type "exit" to exit.'.red
    prompt_chat_method(rsn_chat)
  end
end

def prompt_user(method, rsn_chat)
  print("Enter your #{method} prompt (or type \"exit\" to exit): ".green)
  prompt = gets.chomp

  case prompt.downcase
  when 'chat'
    prompt_chat_method(rsn_chat)
  when 'exit'
    puts "\nExiting RsnChat CLI. Goodbye!\n".yellow
  else
    begin
      response = rsn_chat.send(method.downcase, prompt)
      puts "#{method} Response:".blue.bold + " #{response['message']}"
    rescue RuntimeError => e
      puts "Error calling #{method}: #{e.message}".red
    end

    prompt_user(method, rsn_chat)
  end
end

prompt_api_key