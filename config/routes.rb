Rails.application.routes.draw do
  
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users

  root 'movies#index'

  resources :movies do
  	  resources :reviews, except: [:show, :index]
  	  get :watch
	end

end
