class ProjectsController < ApplicationController

  def new

  end

  def create

  end

  def index
    @projects = current_user.projects
  end

  def show
    @current_project = Project.find(params[:id])
    @project_parts = @current_project.project_parts
    @display_picture = @current_project.display_picture
    @progress = @current_project.percentage
  end

  def edit

  end

  def update

  end

  def destroy

  end

end
