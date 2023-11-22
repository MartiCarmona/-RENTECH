class DropConsoles < ActiveRecord::Migration[7.1]
  def change
    drop_table :consoles
  end
end
