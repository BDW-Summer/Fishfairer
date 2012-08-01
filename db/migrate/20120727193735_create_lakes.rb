class CreateLakes < ActiveRecord::Migration
  def change
    create_table :lakes do |t|
      t.string :content
      t.string :name_of_lake
      t.integer :user_id
      t.string  :lake_zipcode
      t.string :photo
 
      add_column :lakes, :permalink, :string
      
      t.timestamps
    end 
  end
end 
