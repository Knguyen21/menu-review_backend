Rails.application.routes.draw do
  resources :reviews, except: [:new, :edit]
  resources :restaurants, except: [:new, :edit]
  resources :meals, except: [:new, :edit, :index, :create]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]

  resources :restaurants, except: [:new, :edit] do
    resources :meals, only: [:index, :create]

  end

end
