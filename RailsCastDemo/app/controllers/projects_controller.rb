class ProjectsController < ApplicationController
	def show
		@project = Project.find(params[:id])
		@tasks = @project.tasks.find_incomplete :limit => 3, :order =>'created_at DESC'
	end
end
