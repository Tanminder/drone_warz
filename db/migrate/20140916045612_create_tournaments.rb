class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :location
      t.datetime :date
      t.text :description
      t.references :team, index: true

      t.timestamps
    end
  end
end
