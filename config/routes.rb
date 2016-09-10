Rails.application.routes.draw do

	resources :equipment
    resources :measurements
	resources :movements
	resources :workouts

    resources :workout_movements
    resources :workout_segments


    devise_scope :user do
        get '/login' => 'sessions#new', as: 'login'
        get '/logout' => 'sessions#destroy', as: 'logout'
        get '/register' => 'registrations#new', as: 'register'
    end
    devise_for :users, :controllers => { :omniauth_callbacks => 'oauth', :registrations => 'registrations', :sessions => 'sessions' }

  mount SwellMedia::Engine, :at => '/'

end
