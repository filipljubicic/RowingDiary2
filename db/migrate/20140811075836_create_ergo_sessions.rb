class CreateErgoSessions < ActiveRecord::Migration
  def change
    create_table :ergo_sessions do |t|
      t.string :description
      t.integer :split
      t.time :time
      t.integer :rate
      t.integer :distance
      t.integer :hr
      t.text :notes

      t.timestamps
    end
  end
end
