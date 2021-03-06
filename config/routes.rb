Switter::Application.routes.draw do
  

  resources :doortags

  resources :sweeters

  get 'doortags/related'
  get "session/new"
  get "session/create"
  get "session/destroy"
  devise_for :people
  resources :users

  resources :swits 

  get 'post/sweet/:id' => 'posts#sweet', as: 'sweet_a_post'

  get 'post/sour/:id' => 'posts#sour', as: 'sour_a_post'

  get 'login' => 'session#create'
  post 'login' => 'session#create'
  get 'logout' => 'session#destroy'

  resources :posts

  resources :posts do
    resources :comments, :doortags
  end

  get '/doortag' => 'doortags#related'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'sweeters#index'

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
