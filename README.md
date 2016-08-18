# README

Barebones app example that we will be using for rails school on dockerizing
a rails web application. This app will be using Rails 5, redis, sidekiq, and
postgres. Instructions on getting the app working are provided below.

To get app working:

- install [sidekiq](https://github.com/mperham/sidekiq)

- install redis (if you are using homebrew)
```
brew update
brew install redis
```

- install rails 5
```
gem install rails
```

- install postgres
```
brew update
brew install postgres
```

- fork repo and clone

- bundle install

- create db and load schema
```
rails db:create
rails db:schema:load
```

- add .env to gitignore (this file will also be used by docker-compose)

- commit changes to gitignore

- create .env file in app root directory

- in .env file add the following environemental variables:
```
GMAIL_USER_NAME=YOUR_GMAIL_USER_NAME
GMAIL_PASSWORD=YOUR_GMAIL_PASSWORD
```

If you would like to use a different email provider you will need to change the
action mailer configuration in /config/environments/development

- open terminal and start rails server
```
rails server
```

- open another tab in terminal and start redis
```
redis-server
```

- open another tab in terminal and start sidekiq
```
bundle exec sidekiq
```

- open browser and navigate to localhost:3000

- add email to subscription list and send test email to be sure that everything
is working


