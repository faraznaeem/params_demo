Rails.application.routes.draw do
  ## Set root controller
  #
   root controller: :posts, action: :index

  ## Resourceful routing
  #resources :posts
  #resources :articles, only: [:index, :show, :edit]

  ## Non resourceful routing
 # get '/articles/:id', to: 'articles#show'

  ## Namespace
  namespace :author do
    resources :magazines
    resources :novels
    resources :short_stories
  end

  ## Nested routes
  # resources :authors do
  #   resources :dramas
  #   resources :italian_drams
  # end
end
