Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#creating routes for posts and comments
resources :posts do
	resources :comments
end

#Gets the contacts path for the contacts new function
get 'contacts', to: 'contacts#contact'

#Gets the request contacts path for the contacts request contacts function
post 'request_contacts', to: 'contacts#request_contacts'

#Gets the activities path for the activities index function
get 'activities', to: 'activities#index'


#generates resources for the rest of controllores
resources :countries
resources :activities

#Sets a root path
root 'posts#index'


#ends routes
end
