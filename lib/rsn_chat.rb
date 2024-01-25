require 'rest-client'
require 'json'

class RsnChat
  def initialize(api_key)
    raise 'Please provide an API key' unless api_key

    @api_key = api_key
  end

  def gpt(prompt)
    begin
      #puts "DEBUG: Prompt before request: #{prompt}"
      payload = { prompt: prompt }
      headers = { Authorization: "Bearer #{@api_key}", content_type: :json }

      response = RestClient.post('https://ai.rnilaweera.ovh/api/v1/user/gpt', payload.to_json, headers)
      return JSON.parse(response.body)
    rescue RestClient::ExceptionWithResponse => e
      raise "RsnChat GPT Error: #{e.response}"
    end
  end
  
  def openchat(prompt)
    begin
      #puts "DEBUG: Prompt before request: #{prompt}"
      payload = { prompt: prompt }
      headers = { Authorization: "Bearer #{@api_key}", content_type: :json }

      response = RestClient.post('https://ai.rnilaweera.ovh/api/v1/user/openchat', payload.to_json, headers)
      return JSON.parse(response.body)
    rescue RestClient::ExceptionWithResponse => e
      raise "RsnChat OpenChat Error: #{e.response}"
    end
  end
  
  def bard(prompt)
    begin
      #puts "DEBUG: Prompt before request: #{prompt}"
      payload = { prompt: prompt }
      headers = { Authorization: "Bearer #{@api_key}", content_type: :json }

      response = RestClient.post('https://ai.rnilaweera.ovh/api/v1/user/bard', payload.to_json, headers)
      return JSON.parse(response.body)
    rescue RestClient::ExceptionWithResponse => e
      raise "RsnChat Bard Error: #{e.response}"
    end
  end
  
  def gemini(prompt)
    begin
      #puts "DEBUG: Prompt before request: #{prompt}"
      payload = { prompt: prompt }
      headers = { Authorization: "Bearer #{@api_key}", content_type: :json }

      response = RestClient.post('https://ai.rnilaweera.ovh/api/v1/user/gemini', payload.to_json, headers)
      return JSON.parse(response.body)
    rescue RestClient::ExceptionWithResponse => e
      raise "RsnChat Gemimi Error: #{e.response}"
    end
  end
  
  def llama(prompt)
    begin
      #puts "DEBUG: Prompt before request: #{prompt}"
      payload = { prompt: prompt }
      headers = { Authorization: "Bearer #{@api_key}", content_type: :json }

      response = RestClient.post('https://ai.rnilaweera.ovh/api/v1/user/llama', payload.to_json, headers)
      return JSON.parse(response.body)
    rescue RestClient::ExceptionWithResponse => e
      raise "RsnChat LlaMa Error: #{e.response}"
    end
  end

  def codellama(prompt)
    begin
      #puts "DEBUG: Prompt before request: #{prompt}"
      payload = { prompt: prompt }
      headers = { Authorization: "Bearer #{@api_key}", content_type: :json }

      response = RestClient.post('https://ai.rnilaweera.ovh/api/v1/user/codellama', payload.to_json, headers)
      return JSON.parse(response.body)
    rescue RestClient::ExceptionWithResponse => e
      raise "RsnChat CodeLlaMa Error: #{e.response}"
    end
  end
  
  def mixtral(prompt)
    begin
      #puts "DEBUG: Prompt before request: #{prompt}"
      payload = { prompt: prompt }
      headers = { Authorization: "Bearer #{@api_key}", content_type: :json }

      response = RestClient.post('https://ai.rnilaweera.ovh/api/v1/user/mixtral', payload.to_json, headers)
      return JSON.parse(response.body)
    rescue RestClient::ExceptionWithResponse => e
      raise "RsnChat Mixtral Error: #{e.response}"

    end
  end
end
