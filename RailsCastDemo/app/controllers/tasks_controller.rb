class TasksController < ApplicationController
	def index
		@tasks = Task.find_incomplete(:include => :project)
		#@tasks = Task.all(:include => :project)
		#@tasks = Task.order("projects.name").includes(:project)
		#@tasks = Task.order("projects.name").joins(:project).select("tasks.*, projects.name as project_name")
		#Ep29: group_by_month
		@task_months = @tasks.group_by { |t| t.due_at.beginning_of_month } #END Ep29: group_by_month
	end

	def incomplete
		@tasks = Task.find_all_by_complete(false)
	end

	def last_incomplete
		@task = Task.find_by_complete(false, :order => 'created_at DESC')
	end
	# Episode 15 Fun with Find Conditions
		# Task.find(:all, :conditions => ["complete = ? AND priority = ?", false, 2])
		# SELECT "tasks".* FROM "tasks" WHERE (complete = 'f' AND priority = 2)

		# Task.find(:all, :conditions => { complete: false, priority: [1,3] })
		# SELECT "tasks".* FROM "tasks" WHERE "tasks"."complete" = 'f' AND "tasks"."priority" IN (1, 3)

		# Task.find_all_by_priority(1..3)
		# SELECT "tasks".* FROM "tasks" WHERE ("tasks"."priority" BETWEEN 1 AND 3)

	# Episode 15 Custom REST Actions
	def complete
		@task = Task.find(params[:id])
		@task.update_attribute(:complete, true)
		flash[:notice] = "Successfully marked task as complete."
		redirect_to completed_tasks_path
	end

	def completed
		@tasks = Task.find(:all, :conditions => 'complete = "t"')
		#@tasks = Task.find_all_by_complete(true)
	end
	# end Episode 15
end