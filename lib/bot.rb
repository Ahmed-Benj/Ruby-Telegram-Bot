# frozen_string_literal: true

require 'telegram/bot'

token = '1799533455:AAEmVvoRD_K-0qAELHUJlphJDgroSo52ryM'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id,
                           text: "Hello #{message.from.first_name}, Welcome to daily schedule bot, use commands /start")
    when '/stop'
      bot.api.send_message(chat_id: message.chat.id, text: "Good Bye, #{message.from.first_name}")
    end
  end
end
