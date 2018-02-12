class TodosController < ApplicationController
  def index
  end

  def create
  	#todo = Todo.new
	#todo["text"] = params["text"]
	#todo["isCompleted"] = false
	#todo.save()
	#p Project.all["Семья"]
	#p params["projTitle"]
  	#p Project.all
  	#p Project.all[0]["title"] == params["projTitle"]

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
  end
end
