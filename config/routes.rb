Rails.application.routes.draw do
  # root 'home#index', as: 'home'

  devise_for :users
  root 'home#index', as: 'user_home'

  devise_for :admins
  get 'vinos/index', as: 'admin_vinos'
  get 'cepas/index', as: 'admin_cepas'
  get 'home/index', as: 'admin_home'

  authenticate :admin do
    resources :vinos
    resources :cepas
  end
end
