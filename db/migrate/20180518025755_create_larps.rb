class CreateLarps < ActiveRecord::Migration[5.1]
  def change
    create_table :larps do |t|
      t.string :name,              null: false
      t.timestamps
    end
    create_table :characters do |t|
      t.string :name,              null: false
      t.string :description,       null: false
      t.belongs_to :larp,          foreign_key: true
      t.timestamps
    end
  end
end
