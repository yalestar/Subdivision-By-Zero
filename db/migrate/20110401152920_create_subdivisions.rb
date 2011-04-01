class CreateSubdivisions < ActiveRecord::Migration
  def self.up
    create_table :subdivisions do |t|
      t.string :first
      t.string :second
      t.string :third
      t.string :image_path

      t.timestamps
    end
  end

  def self.down
    drop_table :subdivisions
  end
end
