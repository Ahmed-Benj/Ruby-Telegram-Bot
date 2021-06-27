# frozen_string_literal: true

require_relative '../lib/bot'
require_relative '../lib/quote'

# puts 'Welcome to Ruby Telegram Bot for Sports benefits'
# B = Telegrambot.new
# B.runbot

quotes = Quote.new
quote = quotes.getrandomquote
puts (quote['text']).to_s
