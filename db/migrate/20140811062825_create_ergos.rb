class CreateErgos < ActiveRecord::Migration
  def change
    create_table :ergos do |t|
      t.string :description
      t.integer :split
      t.integer :time
      t.integer :rate
      t.integer :distance
      t.integer :hr
      t.string :notes

      t.timestamps
    end
  end
end
