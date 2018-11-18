class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.boolean :complete
      t.integer :pomodoro_estimate
      t.string :description

      t.timestamps null: false
    end
  end
end
