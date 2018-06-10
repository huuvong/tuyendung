Rails.application.routes.draw do
#   get 'admin/index'
#
#   get 'sessions/new'
#
#   get 'sessions/create'
#
#   get 'sessions/destroy'
#
  # get 'home/index'
#
#   # resources :users
#   # resources :thongtincongviecs
#   # resources :diadiems
#   resources :vitricongviecs
#   # resources :thongtincanhans
#   # resources :congties
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root :to => 'home#index'

# controller :sessions do
#   get 'login' => :new
#   post 'login' => :create
#   delete 'logout' => :destroy
# end
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
    end
end

