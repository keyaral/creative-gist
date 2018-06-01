class CreateLarpRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :larp_registrations do |t|
      t.belongs_to :larp, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.string :registration_state
      t.timestamps
    end
  end
end
