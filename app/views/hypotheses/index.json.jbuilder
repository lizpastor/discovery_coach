json.array!(@hypotheses) do |hypothesis|
  json.extract! hypothesis, :id, :date, :name, :change, :impact, :who, :how_much, :how_long
  json.url hypothesis_url(hypothesis, format: :json)
end
