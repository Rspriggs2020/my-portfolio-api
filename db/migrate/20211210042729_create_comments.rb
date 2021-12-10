class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :title
      t.string :description
      t.string :contact_info
      t.integer :project_id

      t.timestamps
    end
  end
end
