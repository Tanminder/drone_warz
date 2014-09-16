class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.string :title
      t.text :body
      t.references :member, index: true
      t.references :league, index: true

      t.timestamps
    end
  end
end
