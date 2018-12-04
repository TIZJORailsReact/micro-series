Rails.application.routes.draw do
  apipie
  resources :series, only: %i(index show), :defaults => { :format => 'json' } do
    resources :seasons, only: :index, :defaults => { :format => 'json' }
  end

  resources :seasons, only: :show, :defaults => { :format => 'json' } do
    resources :episodes, only: :index, :defaults => { :format => 'json' }
  end

  resources :episodes, only: :show, :defaults => { :format => 'json' }
end
