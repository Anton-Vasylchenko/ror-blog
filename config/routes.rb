Rails.application.routes.draw do
  root "articles#index"

  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  get "/articles/archive", to: "articles#archive"
  get "/articles/login", to: "articles#login"
  
  resources :articles do
    resources :comments
  end
end
