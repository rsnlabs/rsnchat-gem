# rsnchat

This package package for interacting with GPT4-based chat services, OpenChat, Bard, Gemini, LlaMa Mixtral and etc... without restrictions or limits

## Installation

**Installation**
```bash
gem install rsnchat
```

# APIKEY

Discord : [https://discord.gg/r5QWdKfQxr](https://discord.gg/r5QWdKfQxr)

**Example CLI Command**
```hs
rsnchat
```

Join discord server and create account with **/new** slash command and get your apikey with **/key** slash command for free!


## Usage GPT3

```ruby
require 'rsn_chat'

rsn_chat = RsnChat.new('rsnai_××××××××××××××××××××××')

begin
  response = rsn_chat.gpt('Hello what is your name?')
  puts "Response: #{response['message']}"
rescue RuntimeError => e
  puts "Error: #{e.message}"
end
```

## Usage GPT4

```ruby
require 'rsn_chat'

rsn_chat = RsnChat.new('rsnai_××××××××××××××××××××××')

begin
  response = rsn_chat.gpt4('Hello what is your name?')
  puts "Response: #{response['message']}"
rescue RuntimeError => e
  puts "Error: #{e.message}"
end
```

## Usage OpenChat

```ruby
require 'rsn_chat'

rsn_chat = RsnChat.new('rsnai_××××××××××××××××××××××')

begin
  response = rsn_chat.openchat('Hello what is your name?')
  puts "Response: #{response['message']}"
rescue RuntimeError => e
  puts "Error: #{e.message}"
end
```

## Usage Bard

```ruby
require 'rsn_chat'

rsn_chat = RsnChat.new('rsnai_××××××××××××××××××××××')

begin
  response = rsn_chat.bard('Hello what is your name?')
  puts "Response: #{response['message']}"
rescue RuntimeError => e
  puts "Error: #{e.message}"
end
```

## Usage Gemini

```ruby
require 'rsn_chat'

rsn_chat = RsnChat.new('rsnai_××××××××××××××××××××××')

begin
  response = rsn_chat.gemini('Hello what is your name?')
  puts "Response: #{response['message']}"
rescue RuntimeError => e
  puts "Error: #{e.message}"
end
```

## Usage LlaMa

```ruby
require 'rsn_chat'

rsn_chat = RsnChat.new('rsnai_××××××××××××××××××××××')

begin
  response = rsn_chat.llama('Hello what is your name?')
  puts "Response: #{response['message']}"
rescue RuntimeError => e
  puts "Error: #{e.message}"
end
```

## Usage CodeLlama

```ruby
require 'rsn_chat'

rsn_chat = RsnChat.new('rsnai_××××××××××××××××××××××')

begin
  response = rsn_chat.codellama('Hello what is your name?')
  puts "Response: #{response['message']}"
rescue RuntimeError => e
  puts "Error: #{e.message}"
end
```

## Usage Mixtral

```ruby
require 'rsn_chat'

rsn_chat = RsnChat.new('rsnai_××××××××××××××××××××××')

begin
  response = rsn_chat.mixtral('Hello what is your name?')
  puts "Response: #{response['message']}"
rescue RuntimeError => e
  puts "Error: #{e.message}"
end
```

## Usage Claude (premium)

```ruby
require 'rsn_chat'

rsn_chat = RsnChat.new('rsnai_××××××××××××××××××××××')

begin
  response = rsn_chat.claude('Hello what is your name?')
  puts "Response: #{response['message']}"
rescue RuntimeError => e
  puts "Error: #{e.message}"
end
```

## Usage Naomi (ai girlfriend) (premium)

```ruby
require 'rsn_chat'

rsn_chat = RsnChat.new('rsnai_××××××××××××××××××××××')

begin
  response = rsn_chat.naomi('Hello what is your name?')
  puts "Response: #{response['message']}"
rescue RuntimeError => e
  puts "Error: #{e.message}"
end
```

## Usage ZeroTwo (ai girl) (premium)

```ruby
require 'rsn_chat'

rsn_chat = RsnChat.new('rsnai_××××××××××××××××××××××')

begin
  response = rsn_chat.zerotwo('Hello what is your name?')
  puts "Response: #{response['message']}"
rescue RuntimeError => e
  puts "Error: #{e.message}"
end
```