FilterrificDemo::Application.routes.draw do

  resources :students

  root :to => 'application#index'

end
