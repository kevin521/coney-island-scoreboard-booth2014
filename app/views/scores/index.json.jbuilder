json.array!(@scores) do |score|
  json.extract! score, :id, :name, :hole1, :hole2, :hole3
  json.url score_url(score, format: :json)
end
