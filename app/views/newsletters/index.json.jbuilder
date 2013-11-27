json.array!(@newsletters) do |newsletter|
  json.extract! newsletter, :title
  json.url newsletter_url(newsletter, format: :json)
end
