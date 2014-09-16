json.array!(@tournaments) do |tournament|
  json.extract! tournament, :id, :name, :location, :date, :description, :team_id
  json.url tournament_url(tournament, format: :json)
end
