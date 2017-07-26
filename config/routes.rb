Rails.application.routes.draw do
  resources :item_trackings

  resources :trackings

  resources :invoices

  resources :carriers

  resources :promotions

  resources :order_items

  resources :gift_wraps

  resources :freights

  resources :orders

  resources :shipping_addresses

  resources :billing_addresses

  resources :phones

  resources :customers

  resources :lojas
  
  resources :produto_market_places
  
  resources :atributos_produtos
  
  resources :market_empresas
  
  resources :send_prod
  
  resources :send_order
  
  resources :get_prod_by_seller
  
  resources :get_order

  devise_for :users, controllers: {sessions: "sessions"} 
  
  get 'sessions/new'
  
  resources :users_empresas
  
  resources :cnova
  
  resources :home 
  
  resources :produtos
  
  resources :empresas
  
  resources :market_places

  get 'home/index'
  
  root 'home#index'

  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
