class AddTournamentToRsvp < ActiveRecord::Migration
  def change
    add_reference :rsvps, :tournament, index: true
  end
end
