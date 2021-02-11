# Installation
These instructions are designed for setting up Floor Coverage website to run on localhost. 
If you want to deploy the software for your own project, then see how it is implemented to deploy on [Heroku](https://www.heroku.com/home) on 
the [production](https://github.com/FloorCoverage/CS4360/tree/production) branch.

These instructions are based on Windows 10 and WSL for docker, which what was used by the Floor Coverage team. 

It is important to reiterate that: -
* The [master](https://github.com/FloorCoverage/CS4360) branch is for development and the [production](https://github.com/FloorCoverage/CS4360/tree/production) is for publishing to `Heroku`
* The [master](https://github.com/FloorCoverage/CS4360) branch uses `Sqlite3` and [production](https://github.com/FloorCoverage/CS4360/tree/production) branch  uses `PostgreSQL`

# Minimum requirements
```console
$ ruby -v
ruby 2.7.1p83 (2020-03-31 revision a0c7c23c9c) [x64-mingw32]
$ rails -v
Rails 6.0.3.4
$ yarn -v
1.22.5
$ bundle -v
Bundler version 2.1.4 
```
# Optional requirements
```console 
$ docker -v
Docker version 19.03.13, build 4484c46d9d
```
# Cloning the repository
```console 
git clone git@github.com:FloorCoverage/CS4360.git
```
# Building and starting the server for [master](https://github.com/FloorCoverage/CS4360) 
```console 
yarn install --check-files 
bundle install
rails db:drop:_unsafe  
rails db:migrate
rails db:seed 
rails db:migrate 
rails s
```
the seed file was created for demo and debugging purposes
# Building and starting the server for [production](https://github.com/FloorCoverage/CS4360/tree/production) branch
add a `.env` file on root path and make sure to enter your variables
```dotenv 
POSTGRES_USER='enter_your_variables'
POSTGRES_PASSWORD='enter_your_variables'
POSTGRES_HOST='enter_your_variables'
POSTGRES_DB='enter_your_variables'
POSTGRES_TEST_DB='enter_your_variables'
DATABASE_URL='enter_your_variables'
GMAIL_USERNAME = 'enter_your_variables'
GMAIL_PASSWORD = 'enter_your_variables'
```
```console 
docker build
docker-compose up
```