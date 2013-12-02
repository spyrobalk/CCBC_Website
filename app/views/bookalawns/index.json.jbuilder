json.array!(@bookalawns) do |bookalawn|
  json.extract! bookalawn, :lawn, :start_at, :end_at
  json.url bookalawn_url(bookalawn, format: :json)
end
