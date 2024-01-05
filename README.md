# rsnchat

This package package for interacting with GPT4-based chat services, OpenChat, Bard, Gemini, LlaMa and Mixtral without restrictions or limits

## Installation

**Installation**
```bash
gem install rsnchat
```

## Usage GPT4

```ruby
require 'rsnchat'

rsn_chat = RsnChat.new('chatgpt_××××××××××××××××××××××')

begin
  response = rsn_chat.gpt('Hello what is your name?')
  puts "Response: #{response['message']}"
rescue RuntimeError => e
  puts "Error: #{e.message}"
end
```

## Usage OpenChat

```ruby
require 'rsnchat'

rsn_chat = RsnChat.new('chatgpt_××××××××××××××××××××××')

begin
  response = rsn_chat.openchat('Hello what is your name?')
  puts "Response: #{response['message']}"
rescue RuntimeError => e
  puts "Error: #{e.message}"
end
```

## Usage Bard

```ruby
require 'rsnchat'

rsn_chat = RsnChat.new('chatgpt_××××××××××××××××××××××')

begin
  response = rsn_chat.bard('Hello what is your name?')
  puts "Response: #{response['message']}"
rescue RuntimeError => e
  puts "Error: #{e.message}"
end
```

## Usage Gemini

```ruby
require 'rsnchat'

rsn_chat = RsnChat.new('chatgpt_××××××××××××××××××××××')

begin
  response = rsn_chat.gemini('Hello what is your name?')
  puts "Response: #{response['message']}"
rescue RuntimeError => e
  puts "Error: #{e.message}"
end
```

## Usage LlaMa

```ruby
require 'rsnchat'

rsn_chat = RsnChat.new('chatgpt_××××××××××××××××××××××')

begin
  response = rsn_chat.llama('Hello what is your name?')
  puts "Response: #{response['message']}"
rescue RuntimeError => e
  puts "Error: #{e.message}"
end
```

## Usage Mixtral

```ruby
require 'rsnchat'

rsn_chat = RsnChat.new('chatgpt_××××××××××××××××××××××')

begin
  response = rsn_chat.mixtral('Hello what is your name?')
  puts "Response: #{response['message']}"
rescue RuntimeError => e
  puts "Error: #{e.message}"
end
```

# APIKEY

Discord : [https://discord.gg/r5QWdKfQxr](https://discord.gg/r5QWdKfQxr)

**Example CLI Command**
```hs
rsnchat
```

Join discord server and create account with **/new** slash command and get your apikey with **/key** slash command for free!
