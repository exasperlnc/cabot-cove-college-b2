Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/residents', to: 'resident#index', as: 'resident_path'
  get '/residents/:id', to: 'resident#show'
end
