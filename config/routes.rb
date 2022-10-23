Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :frames, only: [:index, :create, :show, :update, :destroy]
      resources :ratings, only: [:index, :create, :show]
    end
  end

end
