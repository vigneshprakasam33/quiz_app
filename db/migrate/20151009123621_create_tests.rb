class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.integer :question_type_id

      t.timestamps
    end
  end
end
