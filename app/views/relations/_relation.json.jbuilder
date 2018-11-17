json.extract! relation, :id, :follow_id, :follow_name, :follower_id, :follower_name, :created_at, :updated_at
json.url relation_url(relation, format: :json)
