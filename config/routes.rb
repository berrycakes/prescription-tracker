Rails.application.routes.draw do
  resources :prescriptions
  get 'medicines/all', to: 'medicines#all'
  resources :medicines
  resources :doctors
  patch 'medicines/:id/add_favorite', to: 'medicines#add_favorite', as: 'add_favorite_medicine'
  patch 'medicines/:id/remove_favorite', to: 'medicines#remove_favorite', as: 'remove_favorite_medicine'
  root to: 'prescriptions#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
