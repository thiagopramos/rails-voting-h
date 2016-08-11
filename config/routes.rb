Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'contestants#index'
  resources :contestants do
    resources :judgements, only: [:new, :create]
  end
end
