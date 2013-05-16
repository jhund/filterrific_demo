FilterrificDemo::Application.routes.draw do

  resources :countries
  resources :students do
    collection do
      get :reset_filterrific
    end
  end

  root :to => 'application#index'

end
