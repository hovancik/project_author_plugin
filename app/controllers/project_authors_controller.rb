class ProjectAuthorsController < ApplicationController
  unloadable


  def create
  	ProjectAuthor.create(:user_id => params[:user_id],:project_id => params[:project_id])
  	project = Project.find(params[:project_id])
  	redirect_to settings_project_path(project, :tab => 'members')
  end
end
