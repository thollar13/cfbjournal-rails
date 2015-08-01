json.array!(@teams) do |team|
  json.extract! team, :id, :name, :conference, :division
  json.url team_url(team, format: :json)
end
