class Character < ApplicationRecord
  belongs_to :larp

  has_many :abilities
  has_many :items
end
