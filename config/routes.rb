Rails.application.routes.draw do
  resources :prescriptions do 
    resources :prescription_notes
    # resources :prescribed_medicines
  end
  resources :medicines
  resources :doctors
  root to: 'prescriptions#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
