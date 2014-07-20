Rails.application.routes.draw do
  namespace :v1 do
    resources :cats, only: [:index, :create]
  end
end
