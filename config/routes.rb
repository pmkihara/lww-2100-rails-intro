Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Define a rota para o caminho-raiz ('/')
  # http://localhost:3000/
  root 'pages#home'

  # Criar uma rota nova:
  # <verbo> '<path>', to: '<controller>#<action>', (opcional => as: <alias>)
  # http://localhost:3000/about
  get 'about', to: 'pages#about', as: :about_us

  # http://localhost:3000/contact
  get 'contact', to: 'pages#contact'
end
