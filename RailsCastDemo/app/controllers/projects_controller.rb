class ProjectsController < ApplicationController
	def show
		@project = Project.find(params[:id])
		@tasks = @project.tasks.find_all_by_complete(false)
	end
end
