class AddStartsAtToLesson < ActiveRecord::Migration
  def self.up
    add_column :lessons, :starts_at, :datetime
  end

  def self.down
    remove_column :lessons, :starts_at
  end
end
