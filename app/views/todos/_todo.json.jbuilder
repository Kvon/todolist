json.extract! todo, :id, :name, :completed, :color, :created_at, :updated_at
json.url todo_url(todo, format: :json)
