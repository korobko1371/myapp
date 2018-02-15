class TodosController < ApplicationController
  def index
  end

  def create

  	todo = Todo.create(text: params[:text], isCompleted: false)
  	p Project.all.where(title: params["projTitle"])[0].todos << todo
  	todo.save()

	redirect_to root_path
  end

  def update
	tmp1 = Todo.find(params[:id])
	tmp1.update("isCompleted" => !tmp1.isCompleted);

	redirect_to root_path
  end
end
