class RemoveEventFromRsvp < ActiveRecord::Migration
  def change
    remove_reference :rsvps, :event, index: true
  end
end
