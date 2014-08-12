class DeleteErgos < ActiveRecord::Migration
  def change
  end
  def self.up
  drop_table :ergos
end
end
