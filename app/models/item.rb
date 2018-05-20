class Item < ApplicationRecord
has_many :mechanics, as: :mechanicable
end
