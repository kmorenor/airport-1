class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.references :airline, index: true
      t.string :number

      t.timestamps
    end
  end
end
