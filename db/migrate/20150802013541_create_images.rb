class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
			t.string :url, unique: true
			t.string :citation
			t.string :tags, array: true

      t.timestamps null: false
    end
		add_index :images, :tags, using 'gin'
  end
end
