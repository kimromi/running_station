RunningStation::Engine.routes.draw do
  root to: 'station#index'

  resources :runners, param: :name, only: %i(show update)
end
