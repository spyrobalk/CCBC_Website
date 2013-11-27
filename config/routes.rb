CCBCWebsite::Application.routes.draw do
  resources :newsletters

  resources :programme2013s

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => 'ccbc_core#home'
  # get "ccbc_core/home"
  match "/about", :to => 'ccbc_core#about', via: :get
  # get "ccbc_core/about"
  match "/howtojoin", :to => 'ccbc_core#howtojoin', via: :get
  # get "ccbc_core/howtojoin"
  match "/whatyouneed", :to => 'ccbc_core#whatyouneed', via: :get
  #get "ccbc_core/whatyouneed"
  # match "/programme2013", :to => 'ccbc_core#programme2013', via: :get
  #get "ccbc_core/programme2013"
  # match "/newsletters", :to => 'ccbc_core#newsletters', via: :get
  #get "ccbc_core/newsletters"
  match "/clubmatters", :to => 'ccbc_core#clubmatters', via: :get
  #get "ccbc_core/clubmatters"
  match "/howtogetthere", :to => 'ccbc_core#howtogetthere', via: :get
  #get "ccbc_core/howtogetthere"
   match "/bookalawn", :to => 'ccbc_core#bookalawn', via: :get
  #get "ccbc_core/bookalawn"
  match "/linkstocroquetsites", :to => 'ccbc_core#linkstocroquetsites', via: :get
  #get "ccbc_core/linkstocroquetsites"
  
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
