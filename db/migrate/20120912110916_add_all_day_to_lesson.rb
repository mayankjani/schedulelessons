class AddAllDayToLesson < ActiveRecord::Migration
  def self.up
    add_column :lessons, :all_day, :boolean
  end

  def self.down
    remove_column :lessons, :all_day
  end
end
