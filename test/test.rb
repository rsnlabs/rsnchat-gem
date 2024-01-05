require File.expand_path('../lib/rsn_chat', __dir__)
require 'bundler/setup'

rsn_chat = RsnChat.new('chatgpt_××××××××××××××××××××××')

begin
  gpt_response = rsn_chat.gpt('Hello what is your name?')
  puts "GPT Response: #{gpt_response['message']}"
rescue RuntimeError => e
  puts e.message
end