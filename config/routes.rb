Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :url
  root 'url#index'
  get '/url/:id/short' => 'url#short'
end
