class ProjectAuthorsController < ApplicationController
  unloadable


  def create
  	ProjectAuthor.create(:user_id => params[:user_id],:project_id => params[:project_id])
  	project = Project.find(params[:project_id])
  	redirect_to settings_project_path(project, :tab => 'members')
  end

   def update
  	author = ProjectAuthor.find_by_project_id(params[:project_id])
  	project =author.project
  	unless author.user_id == params[:user_id] 
		author.user_id = params[:user_id] 
		author.save 
	end
  	redirect_to settings_project_path(project, :tab => 'members')
  end
end
