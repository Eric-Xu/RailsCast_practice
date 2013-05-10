class Task < ActiveRecord::Base
  attr_accessible :complete, :name, :project_id, :priority

  belongs_to :project, :counter_cache => true

  def category_name
  	read_attribute("category_name") || category.name
  end

  def self.find_incomplete(options={})
  	with_scope :find => options do
	  	find_all_by_complete(false)
	  end
  end

	# Episode 15 Fun with Find Conditions
		# Task.sum(:priority)
	  # SELECT SUM("tasks"."priority") AS sum_id FROM "tasks"

	 	# Task.sum(:priority, :conditions =>["complete = ?", false])
	 	# SELECT SUM("tasks"."priority") AS sum_id FROM "tasks" WHERE (complete = 'f')

	 	# Task.maximum(:priority)
	 	# SELECT MAX("tasks"."priority") AS max_id FROM "tasks"

	 	# Task.average(:priority)
	 	# SELECT AVG("tasks"."priority") AS avg_id FROM "tasks"

	 	# Project.first.tasks.sum(:priority)
	 	# SELECT SUM("tasks"."priority") AS sum_id FROM "tasks" WHERE "tasks"."project_id" = 1
end
