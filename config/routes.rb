Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :posts do
	resources :comments
end

get 'contacts', to: 'contacts#new'
post 'request_contacts', to: 'contacts#request_contacts'

get 'activities', to: 'activities#index'

resources :contacts
resources :pages
resources :countries
resources :activities 


root 'posts#index'



end
