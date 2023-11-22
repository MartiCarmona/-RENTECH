class CreateGadgets < ActiveRecord::Migration[7.1]
  def change
    create_table :gadgets do |t|
      t.string :name

      t.timestamps
    end
  end
end
