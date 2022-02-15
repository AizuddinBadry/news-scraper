Rails.application.routes.draw do
  resources :posts do
    match '/scrape', to: 'posts#scrape', via: :post, on: :collection
  end

  root to: 'posts#index'
end
