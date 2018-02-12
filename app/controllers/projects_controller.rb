class ProjectsController < ApplicationController
  def index
  	@projects = Project.all
  	@tmp = Todo.new
  end

  def update
  end

  def create
  end
end
