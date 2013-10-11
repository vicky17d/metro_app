class CreateAccomplishments < ActiveRecord::Migration
  def change
    create_table :accomplishments do |t|
      t.string :title
      
      t.integer :userweek_id
      t.timestamps
    end
  end
end
