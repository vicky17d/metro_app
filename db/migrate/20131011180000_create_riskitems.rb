class CreateRiskitems < ActiveRecord::Migration
  def change
    create_table :riskitems do |t|
      t.string :title
      t.string :severity

      t.integer :userweek_id
      t.timestamps
    end
  end
end
