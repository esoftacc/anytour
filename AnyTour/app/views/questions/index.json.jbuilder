json.array!(@questions) do |question|
  json.extract! question, :id, :title, :email, :name, :body, :tour_id, :status, :single
  json.url question_url(question, format: :json)
end
