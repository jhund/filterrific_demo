FilterrificDemo::Application.routes.draw do

  resources :students do
    collection do
      get :reset_filterrific
    end
  end

  root :to => 'application#index'

end
