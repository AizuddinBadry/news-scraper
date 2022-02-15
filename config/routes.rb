Rails.application.routes.draw do
  resources :posts do
    match '/scrape/:type', to: 'posts#scrape', via: :get, on: :collection, as: :scrape
  end

  root to: 'posts#index'
end
