Rails.application.routes.draw do

  namespace :api, { format: 'text' } do
    post "products/show" => "products#show" 
  end

  namespace :api, { format: 'json' } do
    # match 'api/products/:id' => 'products#index'
    resources :products
  end

  resources :products
  root to: 'products#index'

end
