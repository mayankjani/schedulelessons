class CreateClazzs < ActiveRecord::Migration
  def self.up
    create_table :clazzs do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :clazzs
  end
end
