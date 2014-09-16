json.array!(@rsvps) do |rsvp|
  json.extract! rsvp, :id, :event_id, :member_id
  json.url rsvp_url(rsvp, format: :json)
end
