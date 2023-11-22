class CreateOutdoors < ActiveRecord::Migration[7.1]
  def change
    create_table :outdoors do |t|
      t.string :name

      t.timestamps
    end
  end
end
