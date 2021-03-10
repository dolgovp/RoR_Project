class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.text :body
      t.text :comment
      t.string :mark
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
