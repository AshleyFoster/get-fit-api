Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      devise_for :users
      root to: "exercises#index"
      resources :exercises
    end
  end
end
