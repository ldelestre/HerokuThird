Rails.application.routes.draw do
	get '/', to: 'static_pages#home'
	get '/firstform',  to: 'users#new1'
	post '/firstform', to: 'users#create'
	get '/secondform',  to: 'users#new2'
	post '/secondform', to: 'users#create'
	get '/thirdform',  to: 'users#new3'
	post '/thirdform', to: 'users#create2'
end