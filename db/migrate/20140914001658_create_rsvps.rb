class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.references :event, index: true
      t.references :member, index: true

      t.timestamps
    end
  end
end
