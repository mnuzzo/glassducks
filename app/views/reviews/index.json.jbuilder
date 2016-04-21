json.array!(@reviews) do |review|
  json.extract! review, :id, :id_number, :rating, :description
  json.url review_url(review, format: :json)
end
