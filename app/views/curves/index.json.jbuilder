json.array!(@curves) do |curf|
  json.extract! curf, :id, :question, :answer, :status
  json.url curf_url(curf, format: :json)
end
