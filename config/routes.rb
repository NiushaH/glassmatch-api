Rails.application.routes.draw do
  resources :rxes
  resources :frames
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  namespace :api do
    namespace :v1 do
      resources :frames
      resources :rxes
    end
  end

end
