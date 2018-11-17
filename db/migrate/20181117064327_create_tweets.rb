class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.integer :user_id
      t.string :user_name
      t.datetime :tweet_time
      t.string :content

      t.timestamps
    end
  end
end
