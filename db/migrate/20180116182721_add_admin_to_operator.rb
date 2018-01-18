class AddAdminToOperator < ActiveRecord::Migration[5.1]
  def change
    add_column :operators, :admin, :boolean
  end
end
