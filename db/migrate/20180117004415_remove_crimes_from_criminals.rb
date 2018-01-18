class RemoveCrimesFromCriminals < ActiveRecord::Migration[5.1]
  def change
    remove_column :criminals, :crimes, :string
  end
end
