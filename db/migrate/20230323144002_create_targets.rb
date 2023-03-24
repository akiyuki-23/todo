class CreateTargets < ActiveRecord::Migration[6.1]
  def change
    create_table :targets do |t|
      t.string :title, null: false
      t.text :description
      t.boolean :completed, default: false
      t.datetime :due_date
       
      t.timestamps
    end
  end
end
