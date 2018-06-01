class Abiltiy < ApplicationRecord
  has_many :mechanics, as: :mechanicable
end
