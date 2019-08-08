Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: :create
  end
  resources :ingredient
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
