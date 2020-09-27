Rails.application.routes.draw do
  resources :works, except: [:show]
  get 'portfolio/:id', to: 'works#show', as: 'portfolio_show'
  
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs
  root to: 'pages#home'
end
