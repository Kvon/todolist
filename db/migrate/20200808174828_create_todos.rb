class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :name
      t.boolean :completed
      t.string :color

      t.timestamps
    end
    add_index :todos, :name
    add_index :todos, :completed
    add_index :todos, :color
  end
end
