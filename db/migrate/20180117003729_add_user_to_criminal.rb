class AddUserToCriminal < ActiveRecord::Migration[5.1]
  def change
    add_reference :criminals, :operator, foreign_key: true
  end
end
