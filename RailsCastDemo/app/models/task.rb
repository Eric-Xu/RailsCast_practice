class Task < ActiveRecord::Base
  attr_accessible :complete, :name, :project_id

  belongs_to :project

  def self.find_incomplete
  	find_all_by_complete(false, :order =>'created_at DESC')
  end
end
