Rails.application.routes.draw do
  root 'articles#index'
  

  resources :articles #para facilitar o link de rotas

end 
