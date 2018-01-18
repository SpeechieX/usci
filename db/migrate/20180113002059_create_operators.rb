class CreateOperators < ActiveRecord::Migration[5.1]
  def change
    create_table :operators do |t|
      t.string :name
      t.string :email
      t.string :agency
      t.string :password_digest

      t.timestamps
    end
  end
end
