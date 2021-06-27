# frozen_string_literal: true

# rubocop: disable Layout/LineLength
# rubocop: disable Metrics/MethodLength
# rubocop: disable Metrics/AbcSize

require 'telegram_bot'
require_relative '../lib/quote'

# This class constructs the telegram bot that will post benefits about sports quotes
class Telegrambot
  def initialize
    @token = '1799533455:AAEmVvoRD_K-0qAELHUJlphJDgroSo52ryM'
  end

  def runbot
    bot = TelegramBot.new(token: @token)
    bot.get_updates(fail_silently: true) do |message|
      puts "@#{message.from.username}: #{message.text}"
      command = message.get_command_for(bot)

      message.reply do |reply|
        case command
        when /start/i
          reply.text = "Hello #{message.from.first_name}, Welcome to sports quotes bot, use commands \n /start - start the bot \n /stop - stop the bot \n /quote - get quote"
        when /stop/i
          reply.text = "Good Bye, #{message.from.first_name}"
        when /quote/i
          quotes = Quote.new
          quote = quotes.getrandomquote
          reply.text = quote['text'].to_s
        else
          reply.text = 'Unknown command'
        end
        puts "sending #{reply.text.inspect} to @#{message.from.username}"
        reply.send_with(bot)
      end
    end
  end
end

# rubocop: enable Layout/LineLength
# rubocop: enable Metrics/MethodLength
# rubocop: enable Metrics/AbcSize
