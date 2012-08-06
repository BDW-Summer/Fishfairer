class AddIndexLakesOnSlug < ActiveRecord::Migration
  def change
 		add_index :lakes, :slug, unique: true
  end
end
