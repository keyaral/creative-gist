class Mechanic < ActiveRecord
  belongs_to :mechanicable, polymorphic: true
end
