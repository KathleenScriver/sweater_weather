Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :forecast, only: [:index]
      resources :background, only: [:index]
      post '/users', to: 'users#create'
    end
  end
end
