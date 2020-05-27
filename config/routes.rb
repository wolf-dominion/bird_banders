Rails.application.routes.draw do
  resources :profiles
  resources :memberships
  resources :bird_captures
  resources :captures
  resources :birds
  resources :research_groups
  resources :users

  post "/login", to: "authentication#login"
  get "secret-profiles", to: "profiles#index"
  post "/find-by-bandid", to: "birds#find_by_bandId"
end
