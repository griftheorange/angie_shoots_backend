Rails.application.routes.draw do
  get '/images', to: 'images#index'
  post '/images', to: 'images#create'
  post '/imagestest', to: 'images#test'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
