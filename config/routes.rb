Rails.application.routes.draw do
  namespace :v1 do
    get '/cloudinary_params' => 'cloudinary_params#show'
    resources :cats, only: [:index, :create]
  end
end
