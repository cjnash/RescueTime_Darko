class CreateDarkos < ActiveRecord::Migration
  def self.up
    create_table :darkos do |t|
      t.integer :status_id
      t.text :status

      t.timestamps
    end
  end

  def self.down
    drop_table :darkos
  end
end
