Rails.application.routes.draw do
  devise_scope :user do
    get "/users" => "devise/registrations#index"
  end

  root "contacts#index"

  resources :contacts
  
  get "up" => "rails/health#show", as: :rails_health_check

  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

end
