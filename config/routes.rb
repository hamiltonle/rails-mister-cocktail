Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]

  # A user can see the list of all cocktails
  # get 'cocktails/index'
  # GET "cocktails"

  # A user can see the details of a given cocktail, with the ingredient list
  # get 'cocktails/show'
  # GET "cocktails/42"

  # A user can create a new cocktail.
  # get 'cocktails/new'
  # get 'cocktails/create'
  # GET "cocktails/new"
  # POST "cocktails"
end
