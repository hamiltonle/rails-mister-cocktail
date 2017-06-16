Rails.application.routes.draw do


  resources :cocktails do
    resources :doses
    # resources :doses, only: [:new, :create, :show]
  end

  # resources :doses, only: [:destroy]
  root 'cocktails#index'

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

  # A user can add a new dose (ingredient/description pair) on an existing cocktail.
  # get 'doses/new'
  # POST "cocktails/42/doses"

  # user can delete a dose on an existing cocktail
  # DELETE "doses/25"




end
