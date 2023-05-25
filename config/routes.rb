Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # resources :movies, only: iw[show index] do
  concern :bookmarkable do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: :destroy

  resources :lists, concerns: :bookmarkable, only: %i[new create show index]
  # resources :movies, concerns: :bookmarkable
end
# Prefix Verb   URI Pattern                                                                                       Controller#Action
# bookmark DELETE /bookmarks/:id(.:format)                                                                          bookmarks#destroy
# list_bookmarks POST   /lists/:list_id/bookmarks(.:format)                                                               bookmarks#create
# new_list_bookmark GET    /lists/:list_id/bookmarks/new(.:format)                                                           bookmarks#new
#    lists GET    /lists(.:format)                                                                                  lists#index
#          POST   /lists(.:format)                                                                                  lists#create
# new_list GET    /lists/new(.:format)                                                                              lists#new
#     list GET    /lists/:id(.:format)                                                                              lists#show
# turbo_recede_historical_location GET    /recede_historical_location(.:format)                                                             turbo/native/navigation#recede
# turbo_resume_historical_location GET    /resume_historical_location(.:format)                                                             turbo/native/navigation#resume
# turbo_refresh_historical_location GET    /refresh_historical_location(.:format)                                                            turbo/native/navigation#refresh
# rails_service_blob GET    /rails/active_storage/blobs/redirect/:signed_id/*filename(.:format)                               active_storage/blobs/redirect#show
# rails_service_blob_proxy GET    /rails/active_storage/blobs/proxy/:signed_id/*filename(.:format)                                  active_storage/blobs/proxy#show
#          GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                                        active_storage/blobs/redirect#show
# rails_blob_representation GET    /rails/active_storage/representations/redirect/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations/redirect#show
# rails_blob_representation_proxy GET    /rails/active_storage/representations/proxy/:signed_blob_id/:variation_key/*filename(.:format)    active_storage/representations/proxy#show
#          GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)          active_storage/representations/redirect#show
# rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                                       active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                               active_storage/disk#update
# rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                                    active_storage/direct_uploads#create
