# 🏃 RunningStation

[![Gem Version](https://badge.fury.io/rb/running_station.svg)](https://badge.fury.io/rb/running_station)
[![Build Status](https://travis-ci.org/kimromi/running_station.svg?branch=master)](https://travis-ci.org/kimromi/running_station)

Rails runners(scripts) management for Ruby on Rails. made for Rails Mountable Engine.

## Usage

## Installation
Add this line to your Ruby on Rails application's Gemfile:

```ruby
gem 'running_station'
```

And then execute:
```bash
$ bundle
```

## Config

Set your Ruby on Rails application.

### config/routes.rb

```ruby
mount RunningStation::Engine => "/running_station"
```

for Device authentication example:

```ruby
authenticate :user do
  mount RunningStation::Engine => "/running_station"
end
```

### app/runners

Put on executable script file in app/runners with rails runner.

## See runners list / Execute

http://your.rails.app/running_station

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
