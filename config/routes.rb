Rails.application.routes.draw do
  resources :enologos
  resources :cargos
  resources :revistas
  root 'home#index'

  devise_for :users
    get 'home/catalogue', as: 'user_cat'

  devise_for :admins
    get 'home/catalogue', as: 'admin_cat'

  authenticate :user do
    resources :home
  end
    
  authenticate :admin do
    resources :vinos
    resources :cepas
    resources :home
  end
  # devise_for :users
  # root 'home#index', as: 'user_home'

  # devise_for :admins
  # get 'home/index', as: 'admin_home'
  # get 'vinos/index', as: 'admin_vinos'
  # get 'cepas/index', as: 'admin_cepas'

  # authenticate :admin do
  #   resources :vinos
  #   resources :cepas
  # end
end
