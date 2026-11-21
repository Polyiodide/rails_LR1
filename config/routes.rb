Rails.application.routes.draw do
  get "/api/books", to: "books#index"
  get "/api/books/:id", to: "books#show"
  post "/api/books", to: "books#new"
  patch "/api/books/:id", to: "books#patch"
  delete "/api/books/:id", to: "books#delete"

  get "/api/authors", to: "authors#index"
  get "/api/authors/:id", to: "authors#show"

  get "/api/category", to: "category#index"
  get "/api/category/:id", to: "category#show"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
