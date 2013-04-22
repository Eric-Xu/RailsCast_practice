class Task < ActiveRecord::Base
  attr_accessible :complete, :name, :project_id

  belongs_to :project
end
