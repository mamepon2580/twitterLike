class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :send_user_id
      t.string :send_user_name
      t.integer :receive_user_id
      t.string :receive_user_name
      t.datetime :message_time
      t.string :content

      t.timestamps
    end
  end
end
