class CreateSubdivisions < ActiveRecord::Migration
  def self.up
    create_table :subdivisions do |t|
      t.string :first_part
      t.string :second_part
      t.string :third_part
      t.string :image_path

      t.timestamps
    end
  end

  def self.down
    drop_table :subdivisions
  end
end
