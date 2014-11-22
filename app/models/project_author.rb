class ProjectAuthor < ActiveRecord::Base
  unloadable

  belongs_to :user
  belongs_to :project 

  def user_name
  	self.user.name
  end 
end
