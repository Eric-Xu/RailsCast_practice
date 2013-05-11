class AddDueAtColumnToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :due_at, :datetime
  end
end
