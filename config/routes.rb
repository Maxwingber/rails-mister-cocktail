Rails.application.routes.draw do
  get '/', to: 'cocktails#index'
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create]
  end
  resources :doses, only: [:destroy]
  resources :cards, only: [:index]

  resources :ingredients, only: [:create, :new, :destroy]
end
