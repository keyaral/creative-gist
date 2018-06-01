class CreateMechanicableAbiltiesItems < ActiveRecord::Migration[5.1]
  def change
    create_table :mechanics do |t|
      t.string :name, null: false
      t.references :mechanicable, polymorphic: true, index: true
      t.string :description
      t.string :duration
      t.string :reuse
      t.timestamps
    end

    create_table :abilities do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.timestamps
    end

    create_table :items do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.timestamps
    end
  end
end
