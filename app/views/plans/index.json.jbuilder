json.array!(@plans) do |plan|
  json.extract! plan, :id, :goal
  json.url plan_url(plan, format: :json)
end
