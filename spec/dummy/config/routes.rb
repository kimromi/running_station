# frozen_string_literal: true

Rails.application.routes.draw do
  mount RunningStation::Engine => "/running_station"
end
