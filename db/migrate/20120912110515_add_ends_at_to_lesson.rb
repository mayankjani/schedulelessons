class AddEndsAtToLesson < ActiveRecord::Migration
  def self.up
    add_column :lessons, :ends_at, :datetime
  end

  def self.down
    remove_column :lessons, :ends_at
  end
end
