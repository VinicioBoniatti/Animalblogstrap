Rails.application.routes.draw do
  scope '(:locale)', locale: /pt-BR|en/ do
    devise_for :users
    root 'articles#index'

    resources :articles do # para facilitar o link de rotas
      resources :comments, only: %i[create destroy]
    end

    resources :categories, except: [:show]
  end
end