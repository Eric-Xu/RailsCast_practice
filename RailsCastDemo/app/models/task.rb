class Task < ActiveRecord::Base
  attr_accessible :complete, :name, :project_id
end
