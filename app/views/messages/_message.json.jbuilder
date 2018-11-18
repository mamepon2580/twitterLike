json.extract! message, :id, :send_user_id, :send_user_name, :receive_user_id, :receive_user_name, :message_time, :content, :created_at, :updated_at
json.url message_url(message, format: :json)
