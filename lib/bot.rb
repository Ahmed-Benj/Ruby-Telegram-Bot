# rubocop: disable Layout/LineLength
# rubocop: disable Metrics/MethodLength

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
          reply.text = "Hello #{message.from.first_name}, Welcome to sports quotes bot, use commands \n /start - start the bot \n /stop - stop the bot \n /benefit - get sport benefit"
        when /stop/i
          reply.text = "Good Bye, #{message.from.first_name}"
        when /benefit/i
          benefits = Benefit.new
          benefit = benefits.getrandombenefit
          reply.text = "#{benefit['title']} :\n\n#{benefit['text']}"
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
