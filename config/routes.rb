Rails.application.routes.draw do
  apipie
  resources :series, only: %i(index show) do
    resources :seasons, only: :index
  end

  resources :seasons, only: :show do
    resources :episodes, only: :index
  end

  resources :episodes, only: :show
end
