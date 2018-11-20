Rails.application.routes.draw do
  get 'index', to: 'tasks#index', as: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks/:id', to: 'tasks#show', as: :show

  get 'new', to: 'tasks#new'

  post 'new', to: 'tasks#new'

  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy'
end
