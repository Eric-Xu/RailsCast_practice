class Project < ActiveRecord::Base
  attr_accessible :name

  has_many :tasks

  def self.all_names
    find(:all).collect(&:name)
  end

	# Episode 37 Simple Search Form
  def self.search(query)
  	if query
			find(:all, :conditions => ['name LIKE ?', '%' + query + '%'])
  	else
  		find(:all)
  	end
  end
end
