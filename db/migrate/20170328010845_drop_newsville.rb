class DropNewsville < ActiveRecord::Migration[5.0]
  def change
    drop_table :newsvilles
  end
end
