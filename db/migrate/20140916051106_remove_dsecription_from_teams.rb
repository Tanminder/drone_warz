class RemoveDsecriptionFromTeams < ActiveRecord::Migration
  def change
    remove_column :teams, :dsecription, :text
  end
end
