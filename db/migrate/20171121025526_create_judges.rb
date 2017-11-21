class CreateJudges < ActiveRecord::Migration[5.1]
  def change
    create_table :judges do |t|
      t.integer :image_id
      t.integer :gender

      t.timestamps
    end
  end
end
