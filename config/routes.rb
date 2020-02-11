Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # lister toutes les tasks
  get 'tasks', to: 'tasks#index'

  # lister 1 task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # creer une task
  get 'new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # editer une task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch 'tasks/:id', to: 'tasks#update'

  # supprimer une task
  delete 'tasks/:id', to: 'tasks#destroy'

  root 'tasks#index'
end
