json.array!(@articles) do |article|
  json.extract! article, :id, :title, :short_description, :description
  json.url article_url(article, format: :json)
end
