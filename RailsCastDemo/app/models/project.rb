class Project < ActiveRecord::Base
  attr_accessible :name, :description

  has_many :tasks

  validates :name, :description, presence: true

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
