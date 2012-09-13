class RemoveStartsAtToLesson < ActiveRecord::Migration
  def self.up
    remove_column :lessons, :start_at
  end

  def self.down
    add_column :lessons, :start_at, :datetime
  end
end
