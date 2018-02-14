class TodosController < ApplicationController
  def index
  end

  def create
	todo = Todo.new
	todo["text"] = params["text"]
	todo["isCompleted"] = false
	Project.all.each do |project|
		if project["title"] == params["projTitle"]
			project.todos << todo
		end
	end
	todo.save()
	redirect_to root_path
  end

  def update
	tmp1 = Todo.find(params[:id])
	if tmp1.isCompleted == true
		tmp1.update("isCompleted" => false);
	else
		tmp1.update("isCompleted" => true);
	end
	redirect_to root_path
  end
end
