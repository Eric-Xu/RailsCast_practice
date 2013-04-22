class Task < ActiveRecord::Base
  attr_accessible :complete, :name, :project_id

  belongs_to :project

  def self.find_incomplete(options={})
  	with_scope :find => options do
	  	find_all_by_complete(false)
	  end
  end
end
