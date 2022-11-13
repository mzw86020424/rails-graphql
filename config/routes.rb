Rails.application.routes.draw do

  resources :users, only: [:index, :create] do
    member do
      get :show
    end
  end
end
