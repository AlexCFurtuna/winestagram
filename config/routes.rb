Rails.application.routes.draw do
  root "pics#landing"

  devise_for :users
  resources :pics do
    resources :comments
    member do
      put "like", to: "pics#upvote"
    end
    resources :comments do
      resources :comments
    end
  end
end
