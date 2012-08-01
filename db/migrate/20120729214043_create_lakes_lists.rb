class CreateLakesLists < ActiveRecord::Migration
  def change
    create_table :lakes_lists do |t|
      t.string :name

      t.timestamps
    end
  end
end
