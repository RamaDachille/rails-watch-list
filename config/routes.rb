Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # resources :movies, only: iw[show index] do
  concern :bookmarkable do
    resources :bookmarks, only: %i[new create]
  end

  resources :lists, concerns: :bookmarkable, only: %i[new create show index]

  resources :lists, only: :destroy
  resources :bookmarks, only: :destroy
end
