class RemoveLeagueFromMember < ActiveRecord::Migration
  def change
    remove_reference :members, :league, index: true
  end
end
