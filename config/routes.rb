Rails.application.routes.draw do

  root 'home#index'

     resources :photos



  root 'products#index'

       resources :photos


    get '/adminv' , to: 'products#admin_view'

    get 'users/admin'

    get 'users/show', as: 'users_show'

  get 'products/index'

    put '/products/update', to: 'products#update', as: 'put_product'

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
