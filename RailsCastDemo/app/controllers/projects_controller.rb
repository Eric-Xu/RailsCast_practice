class ProjectsController < ApplicationController
	def show
		@project = Project.find(params[:id])
		@tasks = @project.tasks.find_incomplete
	end
end
