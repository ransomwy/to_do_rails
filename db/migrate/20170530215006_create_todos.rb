class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :item
      t.text :notes

      t.timestamps
    end
  end
end
