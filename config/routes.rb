Rails.application.routes.draw do

  resources :volunteers
  # get '/volunteers',  to:'volunteers#index', as:'volunteers'
  # post '/volunteers',  to:'volunteers#create'
  # get '/volunteers',  to:'volunteers#new', as:'new_volunteer'
  # get '/volunteers/:id', to:'volunteers#show', as:'volunteer'
  # get '/volunteers/:id/edit', to:'volunteers#edit', as:'edit_volunteer'
  # patch '/volunteers/:id', to:'volunteers#update'
  # delete '/volunteers/:id', to:'volunteers#destroy'


root 'home#index'

get '/pages/pollinators', to:'pages#pollinators', as:'pollinators'

get '/pages/nysparks', to:'pages#nysparks', as:'nysparks'

get '/pages/about', to:'pages#about', as:'about'

get '/pages/admin', to:'pages#admin', as:'admin'

get '/pages/sources', to:'pages#sources', as:'sources'

get '/pages/garden', to:'pages#garden', as:'garden'

get '/pages/contact', to:'pages#contact', as:'contact'

end
