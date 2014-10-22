json.array!(@pages) do |page|
  json.extract! page, :id, :title, :body, :home, :enabled
  json.url page_url(page, format: :json)
end
