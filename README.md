# Rails Friends App

[https://railsfriends-drome.herokuapp.com](https://railsfriends-drome.herokuapp.com)

## Install

### Clone the repository

```zsh
git clone https://github.com/fdromero32/Rails-Friends.git
cd railsfriends
```

### Check your Ruby version

```zsh
ruby -v
```

The ouput should start with something like `ruby 2.7.3`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```zsh
rbenv install 2.7.3
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```zsh
bundle && yarn
```

### Initialize the database

```zsh
rails db:create db:migrate db:seed
```

### Add heroku remotes

Using [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli):

```zsh
heroku git:remote -a railsfriends
heroku git:remote --remote heroku-staging -a railsfriends-staging
```

## Server

```zsh
rails s
```

## Deploy

### With Heroku pipeline (recommended)

Push to Heroku staging remote:

```zsh
git push heroku-staging
```

Go to the Heroku Dashboard and [promote the app to production](https://devcenter.heroku.com/articles/pipelines) or use Heroku CLI:

```zsh
heroku pipelines:promote -a railsfriends-staging
```

### Directly to production (not recommended)

Push to Heroku production remote:

```zsh
git push heroku
```
