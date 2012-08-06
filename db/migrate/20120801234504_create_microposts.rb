class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :content
      t.integer :user_id
      t.integer :lake_id
	  t.string :lake_name
      t.timestamps
    end
    add_index :microposts, [:user_id, :created_at]
    
  end
end