class AddUserweekstatusToUserweeks < ActiveRecord::Migration
  def change
    add_column :userweeks, :userweekstatus, :boolean
  end
end
