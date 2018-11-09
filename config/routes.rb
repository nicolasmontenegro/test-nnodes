Rails.application.routes.draw do
  resources :fights
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'home#index', as: "index"
end
