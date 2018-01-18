class AddCriminalToCrime < ActiveRecord::Migration[5.1]
  def change
    add_reference :crimes, :criminal, foreign_key: true
  end
end
