Rails.application.routes.draw do

  devise_for :users,
              :path => '',
              :path_names => {:sign_in => 'login', :sign_out => 'logout', :edit => 'profile'},
              :controllers => {:registrations => 'registrations',
                               :confirmations => 'confirmations',
      
                               }


  root 'products#index'

       resources :photos
       resources :charges, only:[:new, :create]
       resources :users, only: [:show]

    get '/adminv' , to: 'products#admin_view'

    get 'users/admin'

    get 'users/show', as: 'users_show'

    get 'orderpayement/:id' , to: 'charges#new', as: 'new_charge'

    post 'payementconfirmation/:id' , to: 'charges#create', as: 'charges'

    get 'carts/show'

    devise_for :users

    get 'products/index'

    get '/products/:id', to: 'products#show', as: 'product'

    post '/products/create', to: 'products#create', as: 'create_product'

    patch '/products/update', to: 'products#update', as: 'update_product'

    put '/products/update', to: 'products#update', as: 'put_product'

    get '/products/addtocart/:id', to: 'carts#addtocart', as: 'addtocart'

    get '/showcart', to: 'carts#show', as: 'showcart'

    get '/createorder', to: 'orders#createorder', as: 'createorder'

    get '/orders', to: 'orders#index', as: 'orders'


    delete '/cart/destroy', to: 'carts#destroy', as: 'cartdestroy'

    delete '/cart/destroyitem/:id', to: 'carts#deleteitem', as: 'destroyitem'

    delete '/orderdestroy/:id', to: 'orders#destroy', as: 'orderdestroy'

    get '/newitem', to: 'products#new'

    get 'users/:id',to: 'users#show', as: 'show_user'

    get '/adminv/edit/:id', to: 'products#edit', as:'edit'
  end
