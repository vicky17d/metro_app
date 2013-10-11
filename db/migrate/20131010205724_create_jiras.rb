class CreateJiras < ActiveRecord::Migration
  def change
    create_table :jiras do |t|
      t.string :jiranumber
      t.string :jirastatus
      t.integer :userweek_id 
      t.timestamps
    end
  end
end
