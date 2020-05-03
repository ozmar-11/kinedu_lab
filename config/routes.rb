Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :activities, only: [:index]
    resources :activity_logs, only: [:create, :update]
    resources :babies, only: [:index] do
      resources :activity_logs, only: :index
    end
  end
end
