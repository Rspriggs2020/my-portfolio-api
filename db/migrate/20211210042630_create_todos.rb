class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :project_title
      t.integer :goal_id
      t.boolean :completed

      t.timestamps
    end
  end
end
