class AddTeamToDiscussion < ActiveRecord::Migration
  def change
    add_reference :discussions, :team, index: true
  end
end
