class ProjectsController < ApplicationController
  before_action :set_project, only: [:show]

  def index
    Analytics.page(
      user_id: "anonymous_id",
      name: 'Projects'
    )
    @projects = Project.all
  end

  def show
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end
end
