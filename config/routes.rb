Rails.application.routes.draw do
  # root "frames#index"

  namespace :api do
    namespace :v1 do
      resources :frames, only: [:index, :create, :update, :destroy]
      resources :rxes, only: [:index, :create]
    end
  end

end