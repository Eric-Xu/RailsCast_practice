class ProjectsController < ApplicationController
	layout :user_layout

	def index
		@projects = Project.find(:all)
		# use the projects layout only for this action
		render :layout => 'projects'
	end

	def show
		@project = Project.find(params[:id])
		@tasks = @project.tasks.find_incomplete :limit => 3, :order =>'created_at DESC'
	end

	protected
	  def user_layout
	  	# if current_user.admin?
	  	if true
	  		"admin"
	  	else
	  		"application"
	  	end
	  end
end