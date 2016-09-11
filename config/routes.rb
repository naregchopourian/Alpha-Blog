Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


root 'pages#home'
get 'about', to: 'pages#about'

#
# this right here is magic! it has just created all he paths for CRUD in articles!
resources :articles
#freaking magic!!!!!!

end
