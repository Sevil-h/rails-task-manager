Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'task/new', to: 'task#new', as: :new_task
  post 'tasks', to: 'task#create'
  get 'tasks', to: 'task#index'
  get 'task/:id', to: 'task#show', as: :task
  get 'task/:id/edit', to: 'task#edit', as: :edit_task
  patch 'task/:id', to: 'task#update'
  delete 'task/:id', to: 'task#destroy', as: :delete_task
end
