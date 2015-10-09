class ChangeColumn < ActiveRecord::Migration
  def change
    change_column :choices, :content , :string
  end
end
