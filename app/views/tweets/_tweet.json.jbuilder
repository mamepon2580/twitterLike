json.extract! tweet, :id, :user_id, :user_name, :tweet_time, :content, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
