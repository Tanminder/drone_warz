class RemoveLeagueFromDiscussion < ActiveRecord::Migration
  def change
    remove_reference :discussions, :league, index: true
  end
end
