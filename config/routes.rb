Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/admin_dashboard", to: "admin_dashboards#show"#, as: :admin_dashboard
  resources :networks
  resources :providers
end
