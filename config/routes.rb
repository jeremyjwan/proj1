Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  resources :pokemons, only: [:create]
  patch 'pokemons/capture', to: 'pokemons#capture', as: 'capture'
  patch 'pokemons/damage', to: 'pokemons#damage', as: 'damage'
  get 'pokemons/new', to: 'pokemons#new', as: 'new'
  patch 'pokemons/heal', to: 'pokemons#heal', as: 'heal'
end
