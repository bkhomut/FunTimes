CareApp::Application.routes.draw do
  # Routes for the Note resource:
  # CREATE
  get '/notes/new', controller: 'notes', action: 'new', as: 'new_note'
  post '/notes', controller: 'notes', action: 'create'

  # READ
  get '/notes', controller: 'notes', action: 'index', as: 'notes'
  get '/notes/:id', controller: 'notes', action: 'show', as: 'note'

  # UPDATE
  get '/notes/:id/edit', controller: 'notes', action: 'edit', as: 'edit_note'
  put '/notes/:id', controller: 'notes', action: 'update'

  # DELETE
  delete '/notes/:id', controller: 'notes', action: 'destroy'
  #------------------------------

  # Routes for the Condition resource:
  # CREATE
  get '/conditions/new', controller: 'conditions', action: 'new', as: 'new_condition'
  post '/conditions', controller: 'conditions', action: 'create'

  # READ
  get '/conditions', controller: 'conditions', action: 'index', as: 'conditions'
  get '/conditions/:id', controller: 'conditions', action: 'show', as: 'condition'

  # UPDATE
  get '/conditions/:id/edit', controller: 'conditions', action: 'edit', as: 'edit_condition'
  put '/conditions/:id', controller: 'conditions', action: 'update'

  # DELETE
  delete '/conditions/:id', controller: 'conditions', action: 'destroy'
  #------------------------------

  # Routes for the Case resource:
  # CREATE
  get '/cases/new', controller: 'cases', action: 'new', as: 'new_case'
  post '/cases', controller: 'cases', action: 'create'

  # READ
  get '/cases', controller: 'cases', action: 'index', as: 'cases'
  get '/cases/:id', controller: 'cases', action: 'show', as: 'case'

  # UPDATE
  get '/cases/:id/edit', controller: 'cases', action: 'edit', as: 'edit_case'
  put '/cases/:id', controller: 'cases', action: 'update'

  # DELETE
  delete '/cases/:id', controller: 'cases', action: 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create'

  # READ
  get '/users', controller: 'users', action: 'index', as: 'users'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  put '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
