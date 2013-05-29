CareApp2::Application.routes.draw do
  
  #------------------------------
  get '/login', controller: 'sessions', action: 'new'
  post '/sessions', controller: 'sessions', action: 'create'
  get "/logout", controller: 'sessions', action: 'destroy'

  post "/search", controller: 'users', action: 'filter'

  #------------------------------
  # Routes for the Engagement resource:
  # CREATE
  get '/engagements/new', controller: 'engagements', action: 'new', as: 'new_engagement'
  post '/engagements', controller: 'engagements', action: 'create'

  # READ
  get '/engagements', controller: 'engagements', action: 'index', as: 'engagements'
  get '/engagements/:id', controller: 'engagements', action: 'show', as: 'engagement'

  # UPDATE
  get '/engagements/:id/edit', controller: 'engagements', action: 'edit', as: 'edit_engagement'
  put '/engagements/:id', controller: 'engagements', action: 'update'

  # DELETE
  delete '/engagements/:id', controller: 'engagements', action: 'destroy'
  #------------------------------

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

  get '/', controller: 'home', action: 'index', as: 'home'
  get '/about', controller: 'about', action: 'index', as: 'about'
  get '/contact', controller: 'contact', action: 'index', as: 'contact'

end
