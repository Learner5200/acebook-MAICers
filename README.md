# Acebook
[![Build Status](https://travis-ci.org/Learner5200/acebook-MAICers.svg?branch=master)](https://travis-ci.org/Learner5200/acebook-MAICers)

Acebook is a Facebook clone we created during a 2 week-long engineering project at Makers Academy. This version of Acebook is a full-stack app created in the first week using Ruby on Rails, and tested with RSpec and Capybara. In the second week, we were required to divide the app into a [Rails API](https://github.com/imtiyazzaman1/acebook-MAICers-backend) and a [React front-end](https://github.com/MHUS25/acebook-maicers-fe).

## How to Use

To access the app in production, simply visit https://maicers-acebook.herokuapp.com/ in your web browser.

## How to contribute

First, clone this repo and run `bundle install` to install dependencies, then run `bin/rails db:setup db:migrate` to setup the test and development databases.

If you would like to contribute to this project, please open a new branch, and make a pull request with a summary of proposed changes.

### Accessing the app in development

1. To launch the server, run `bin/rails server`
2. Visit `http://localhost:3000/` in your web browser

### Testing

1. To runs tests, simply run `rspec`. The test files can be found within the `spec` folder

### Linting
* Run `rubocop` in the command line.

### Continuous Integration

* Travis CI will run on each pull request to ensure it is fit to be merged into the master branch.

### How to deploy
* The app will automatically deploy to heroku once a pull request has been approved and merged into the master branch, and the Travis CI build has passed.

## Our process

* We used an agile product development process, working in two-day sprints beginning with a team planning session and ending with a team retrospective. We held stand-ups each morning to keep the whole team up to date on our progress.
* We used a card wall on [waffle.io](https://waffle.io/Learner5200/acebook-MAICers) to keep track of our workflow. Tickets were generated from user stories, estimated, prioritised and assigned to team members.
* We prioritised good agile team-working and product delivery practices, and the achievement of group/individual learning goals, over quantity of features.
* The development of the app was test-driven using RSpec and Capybara.

## Team Members
[**M**una Hussein](https://github.com/MHUS25) |
[**A**nouska Hopkins](https://github.com/ahopkins94) |
[**I**mtiyaz Zaman](https://github.com/imtiyazzaman1)  |
[**C**hris Cooksley](https://github.com/Learner5200)
