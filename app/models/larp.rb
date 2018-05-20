class Larp < ApplicationRecord
  has_many :characters
  has_many :larp_registrations, -> (object){ where("larp_id = ?", object.id )},
           class_name: "LarpRegistration", inverse_of: false

  def registered_users
    self.larp_registrations.map{ |x| x.user_id }
  end
end
