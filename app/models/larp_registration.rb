class LarpRegistration < ApplicationRecord

has_one :character, dependent: :nullify
end
