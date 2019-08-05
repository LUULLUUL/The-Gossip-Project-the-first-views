Rails.application.routes.draw do
  get 'team', to: 'static#team'
  get 'contact', to: 'static#contact'
  get 'home', to: 'static#home'
  get 'home/:first_name', to: 'static#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'gossip/:id', to: 'static#gossip'
  get 'user/:id', to: 'static#user'
end
