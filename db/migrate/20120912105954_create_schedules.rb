class CreateSchedules < ActiveRecord::Migration
  def self.up
    create_table :schedules do |t|
      t.integer :clazz_id
      t.integer :lesson_id
      t.date :date
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :schedules
  end
end
