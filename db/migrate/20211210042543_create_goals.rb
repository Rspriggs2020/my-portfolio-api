class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.string :title
      t.string :description
      t.boolean :completed

      t.timestamps
    end
  end
end
