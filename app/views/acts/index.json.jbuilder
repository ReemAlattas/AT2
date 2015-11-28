json.array!(@acts) do |act|
  json.extract! act, :id, :desc, :target
  json.url act_url(act, format: :json)
end
