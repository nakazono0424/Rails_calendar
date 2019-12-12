Rails.application.routes.draw do
  get "events/add" , to: "events#add"
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
