class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls, id: false do |t|
  	t.string :oldurl
  	t.string :newurl, null: false
  	t.timestamps
	end
	add_index :urls, :newurl, unique: true
  end
end
