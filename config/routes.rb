Rails.application.routes.draw do
  
  resources :alls
  resources :posts
  resources :tests
  resources :buildings
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'listings#index'

  ########################################################################
  ########################################################################

  # http_verb 'url', to: 'controller#action', as: 'whatever_(path)'

  # resources :listings

    get '/listings', to: 'listings#index'
    post 'listings', to: 'listings#create'
    get '/listings/new', to: 'listings#new', as: :new_listing
    get 'listings/:id/edit', to: 'listings#edit', as: 'edit_listing'
    get 'listings/:id', to: 'listings#show', as: 'listing'
    patch 'listings/:id', to: 'listings#update'
    put 'listings/:id', to: 'listings#update'
    delete 'listings/:id', to: 'listings#destroy'

    get '/properties/bootstrap', to: 'properties#bootstrap', as: :properties_bootstrap


  # get 'exit', to: 'sessions#destroy', as: :logout

  ########################################################################
  ########################################################################


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
