class CreateCriminals < ActiveRecord::Migration[5.1]
  def change
    create_table :criminals do |t|
      t.string :ssn
      t.string :name
      t.string :alias
      t.string :dob
      t.string :origin
      t.string :bloodtype
      t.string :scars_marks_tattoos
      t.string :eye_color
      t.string :sex
      t.string :crimes

      t.timestamps
    end
  end
end
