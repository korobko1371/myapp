Rails.application.routes.draw do
  get 'todos/index'

  get 'todos/create'

  get 'todos/update'

	resources :projects, :todos
	root 'projects#index'
end
