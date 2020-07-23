Rails.application.routes.draw do
# I need to come back here and make sure this is correct

  resources :plants, except: [:show]
  get 'plant/:id', to: 'plants#show', as: 'plant_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root to: 'pages#home'
end
