Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Read all tasks
  get 'tasks', to: 'tasks#index'

  # create a task 2 REQUESTS
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # Read the details of one task
  get 'task/:id', to: 'tasks#show', as: :task

  # update a task
  get 'task/:id/edit', to: 'tasks#edit'
  patch 'task/:id', to: 'tasks#update'

  # delete a task
  delete 'task/:id', to: 'tasks#destroy'
end
