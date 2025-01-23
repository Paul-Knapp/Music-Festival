Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  namespace :api do
    namespace :v1 do
      resources :schedules, only: [:index, :show] do
        get ':user_id', to: 'schedules#index', on: :collection, as: 'user_schedules'
        delete ':schedule_id/remove_show/:show_id', to: 'schedules#remove_show', as: 'remove_show'
  
        resource :schedule_shows, only: [:show]
      end
  
      resources :users, only: [:index]
    end
  end
end
