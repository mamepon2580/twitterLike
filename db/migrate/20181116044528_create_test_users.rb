class CreateTestUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :test_users do |t|
      t.string :name
      t.string :password

      t.timestamps
    end
  end
end
