class CreateRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :relations do |t|
      t.integer :follow_id
      t.string :follow_name
      t.integer :follower_id
      t.string :follower_name

      t.timestamps
    end
  end
end
