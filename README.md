# README
[![ozmar-11](https://circleci.com/gh/ozmar-11/kinedu_lab.svg?style=svg)](https://app.circleci.com/pipelines/github/ozmar-11/kinedu_lab)

This is a simple Rails 6 application and the only external dependecy you need is postgresql to run this project 

## Ruby version
2.6.5

## Install dependencies

### Install ruby dependencies
Run `bundle install`

### Install JS dependencies
Run `yarn install`

## Database creation
Run `bundle exec rails db:create`
Run `bundle exec rails db:migrate`

## Database initialization
Run `bundle exec rails db:seed`

## How to run the test suite
Run `bundle exec rspec spec` 
