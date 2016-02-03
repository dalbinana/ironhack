class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
    	t.text :original_url
    	t.text :new_url

      t.timestamps null: false
    end
  end
end
