json.array!(@tours) do |tour|
  json.extract! tour, :id, :title, :short_description, :has_many_day, :has_many_night, :season, :place, :place_info, :description, :min_group_count, :max_group_count, :price, :type, :mark, :image_title, :image_uid, :included_services, :not_included_services, :category
  json.url tour_url(tour, format: :json)
end
