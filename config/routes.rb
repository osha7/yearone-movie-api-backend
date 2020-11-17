Rails.application.routes.draw do
 
resources :movies

get '/create-or-return-movie', to: "movies#create_or_return_movie"
post '/create-or-return-movie', to: "movies#create_or_return_movie"

put '/movies/:movie_api_id', to: "movies#update"

root to: 'application#home'

post '/movies/create', to: "movies#create"

end
