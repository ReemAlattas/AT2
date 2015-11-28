json.array!(@kpis) do |kpi|
  json.extract! kpi, :id, :description, :responsibility, :milestone
  json.url kpi_url(kpi, format: :json)
end
