Rails.application.routes.draw do
  root 'articles#index'
  # API?
  scope :api, defaults: { format: 'json' }, as: :api do
    resources :articles
    devise_for :users, controllers: {
        sessions: 'users/sessions'
    }
  end

  # Non API
  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }
  resources :articles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
