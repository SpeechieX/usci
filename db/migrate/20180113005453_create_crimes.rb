class CreateCrimes < ActiveRecord::Migration[5.1]
  def change
    create_table :crimes do |t|
      t.string :charge
      t.string :date_of_charge
      t.string :victim
      t.boolean :case_closed

      t.timestamps
    end
  end
end
