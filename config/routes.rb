Rails.application.routes.draw do
  resources :pedidos
  resources :produtos
  resources :clientes
  root to: "clientes#index"
end
