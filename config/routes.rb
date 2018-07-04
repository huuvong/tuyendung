Rails.application.routes.draw do
#   get 'admin/index'
#
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'sessions/check'
#
  # get 'home/index'
#
  resources :users
  resources :thongtincongviecs, only: [:index, :show]
#   # resources :diadiems
#   resources :vitricongviecs
  resources :thongtincanhans, only: [:new, :create, :success]
  get 'thongtincanhans/success'
#   # resources :congties
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root :to => 'home#index'

controller :sessions do
  get 'login' => :new
  post 'login' => :create
  delete 'logout' => :destroy
end
    get 'admin/home/index'
    get 'admin' => 'admin/home#index'
  namespace :admin do
        # Directs /admin/products/* to Admin::ProductsController
        # (app/controllers/admin/products_controller.rb)
        #   resources :users

        #   resources :vitricongviecs
        #   resources :thongtincanhans
          resources :vitricongviecs
          resources :congties
          resources :diadiems
          resources :thongtincongviecs
          resources :thongtincanhans
    end
end

