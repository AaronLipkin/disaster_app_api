Rails.application.routes.draw do
  resources :cities, only: 
  resources :survivors
  post '/survivors/distanced', to: 'survivors#distanced'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
