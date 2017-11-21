class CreateBads < ActiveRecord::Migration[5.1]
  def change
    create_table :bads do |t|
    	t.integer :image_id

      t.timestamps
    end
  end
end
