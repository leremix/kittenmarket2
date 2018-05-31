Rails.application.routes.draw do

  devise_for :users,
              :controllers => {:registrations => 'registrations' }


   resources :photos

  get '/adminv' , to: 'products#admin_view'

  get 'users/admin'

  get 'users/show', as: 'users_show'

    get 'users/:id',to: 'users#show', as: 'show_user'

  get 'orderpayement/:id' , to: 'charges#new', as: 'new_charge'

  post 'payementconfirmation/:id' , to: 'charges#create', as: 'charges'

  get 'carts/show'



  root 'products#index'

  get '/products/:id', to: 'products#show', as: 'product'

  get '/products/addtocart/:id', to: 'carts#addtocart', as: 'addtocart'

  get '/showcart', to: 'carts#show', as: 'showcart'

  get '/createorder', to: 'orders#createorder', as: 'createorder'

  get '/orders', to: 'orders#index', as: 'orders'

  delete '/cart/destroy', to: 'carts#destroy', as: 'cartdestroy'

  delete '/cart/destroyitem/:id', to: 'carts#deleteitem', as: 'destroyitem'

  delete '/orderdestroy/:id', to: 'orders#destroy', as: 'orderdestroy'

  get '/newitem', to: 'products#new'

  post '/createitem', to: 'products#create'


  get '/adminv/edit/:id', to: 'products#edit', as:'edit'
end
