Rails.application.routes.draw do
  # namespace :api do
  #   namespace :v1 do
  #     get 'books/index'
  #   end
  # end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :books, only: [ :index, :show, :update, :create, :destroy ]
    end
  end 
end
