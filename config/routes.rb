Rails.application.routes.draw do
  devise_for :users
  resources :pics do
    member do
      get "like", to: "pics#upvote"
    end
  end

  root "pics#index"
end
