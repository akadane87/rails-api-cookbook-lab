Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]

  get '/ingredients', to: 'ingredients#index'
  get '/ingredients/:id', to: 'ingredients#show'
  post '/ingredients', to: 'ingredients#create'
  patch '/ingredients/:id', to: 'ingredients#update'
  delete '/ingredients/:id', to: 'ingredients#destroy'
end
