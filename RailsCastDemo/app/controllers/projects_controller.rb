class ProjectsController < ApplicationController
	layout :user_layout

	def new
		@project = Project.new
		render :layout => 'projects'
	end

	def create
		@project = Project.new(params[:project])
		if params[:preview_button] || !@project.save
			render :new
		else
			flash[:notice] = "Successfully created project!"
			redirect_to project_path(@project)
		end
	end

	def index
		# Episode 37 Simple Search Form
		@projects = Project.search(params[:search])
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