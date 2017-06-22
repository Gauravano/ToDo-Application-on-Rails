class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :content
      t.boolean :done
      t.boolean :urgent
      t.boolean :important

      t.timestamps null: false
    end
  end
end
