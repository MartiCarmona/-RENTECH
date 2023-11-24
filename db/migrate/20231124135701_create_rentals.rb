class CreateRentals < ActiveRecord::Migration[7.1] # or your Rails version
  def change
    create_table :rentals do |t|
      # Define your columns here, for example:
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.timestamps
    end
  end
end
