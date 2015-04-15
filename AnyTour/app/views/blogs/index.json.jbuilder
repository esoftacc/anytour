json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :ru_title
  json.url blog_url(blog, format: :json)
end
