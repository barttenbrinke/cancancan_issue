Rails.application.routes.draw do
  resources :working_documents
  resources :broken_documents
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "working_documents#index"
end
