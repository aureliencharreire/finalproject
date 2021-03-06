Rails.application.routes.draw do
  resources :images
  resources :regions
  resources :departments
  resources :programs do
        resources :lots, except: [:show, :index]
        resources :images, except: [:show, :index]
    end
  resources :searches
  resources :callbacks
  resources :newsletters
  resources :contacts
  devise_for :users
  resources :users, only: [:index, :edit_user, :update_user]
    get 'users/edit/:id', to: 'users#edit_user', :as => :edit_user
    put 'users/edit/:id', to: 'users#update_user', :as => :update_user

  get 'welcome/index'
  get '/programs/:program_id/lots/upload_form' => 'lots#upload_form', as: :new_program_list
  post '/programs/:program_id/lots/upload_form' => 'lots#upload'

  get '/programclient' => 'program_clients#index', as: :programs_client
  get '/programclient/:id' => 'program_clients#show', as: :program_details

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  # Example of regular route:
  get 'departement' => 'departement#index'

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
