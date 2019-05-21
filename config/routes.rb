Rails.application.routes.draw do
  resources :hackers
  resources :ip_addresses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'get_data', to: 'ip_addresses#get_data'
end
