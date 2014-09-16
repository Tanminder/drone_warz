class RemoveDescriptionFromTeams < ActiveRecord::Migration
  def change
    remove_column :teams, :description, :string
  end
end
