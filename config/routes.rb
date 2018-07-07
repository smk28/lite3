Rails.application.routes.draw do
  resources :testdbs
  get 'home/index'
  get 'home/second'
  get 'home/map'
  root 'home#map'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
