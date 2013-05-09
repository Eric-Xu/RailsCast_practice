class TasksController < ApplicationController
	def index
		#@tasks = Task.find_incomplete
		#@tasks = Task.all(:include => :project)
		#@tasks = Task.order("projects.name").includes(:project)
		@tasks = Task.order("projects.name").joins(:project).select("tasks.*, projects.name as project_name")
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
end