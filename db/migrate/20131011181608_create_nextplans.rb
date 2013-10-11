class CreateNextplans < ActiveRecord::Migration
  def change
    create_table :nextplans do |t|
      t.string :title

      t.integer :userweek_id
      t.timestamps
    end
  end
end
