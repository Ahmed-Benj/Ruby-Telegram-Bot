# Ruby-Telegram-Bot

This project involves the implementation of a telegram bot that gives quotes about the benefits of sports when asked.

## Built With

- Ruby
- Telegram

## Getting Started - How to deploy on your machine

- Clone the project
- Create Telegram Bot with https://t.me/BotFather 
- Type `/newbot` and follow instructions to get bot token
- Put your bot token in the `config.rb` file :

        module Config
            TELEGRAM_API = [PUT_YOUR_TOKEN_HERE]
        end
 
- Run `ruby main.rb` in the folder `bin`
- `/start` the telegram bot
- follow instructions

## Live Demo

- For this demo to be working, the bot client should be running on my machine/server :
- [Live Demo](https://t.me/AhmedRubyCapstoneBot)

### Prerequisites

- Text Editor (VSCode for example)
- [Ruby](https://ruby-doc.org/downloads/)
- Initialize ruby GemFile : 'bundle init'
- Add required gems to the Germfile : 
    - gem 'json'
    - gem 'telegram_bot'
- Run 'bundle install' in your terminal

## Author

👤 **Ahmed Ben Jmii**

- Github [@githubhandle](https://github.com/Ahmed-Benj)
- Linkedin [linkedin](https://www.linkedin.com/in/ahmed-b-05600992/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Start by:

- Fork the project
- Clone the forked project
- Run `git checkout -b your-branch-name`
- Make modifications
- Push
- Make a pull request to the development branch of the original project for a review

## Show your support

Give a ⭐️ if you like this project!
