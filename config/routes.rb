Rails.application.routes.draw do
  get 'doses/create'
  get 'doses/new'
  get 'doses/delete'
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/create'
  get 'cocktails/new'
  get 'cocktails/edit'
  get 'cocktails/update'
  get 'cocktails/delete'
  resources :cocktails do
    resources :doses, only: :create
  end
  resources :ingredient
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
