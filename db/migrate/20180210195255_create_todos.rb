class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.text :text
      t.boolean :isCompleted, default: false
	  t.integer :project_id
      t.timestamps
    end
  end
end
