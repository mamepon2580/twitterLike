json.extract! message, :id, :send_user_id, :user_name, :receive_user_id, :message_time, :content, :created_at, :updated_at
json.url message_url(message, format: :json)
