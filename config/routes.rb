Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # read all
  get 'tasks', to: 'tasks#index'
  # read one

  # create new one
  get 'tasks/new', to: 'tasks#new', as: :new_task
  # post information to
  post 'tasks', to: 'tasks#create'

  # #update(get page with form)
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # #post information to with patch(updating)
  patch 'tasks/:id', to: 'tasks#update'
  get 'tasks/:id', to: 'tasks#show', as: :task
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task

end
