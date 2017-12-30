FilterrificDemo::Application.routes.draw do

  resources :countries
  resources :students

  root :to => 'application#index'

end
