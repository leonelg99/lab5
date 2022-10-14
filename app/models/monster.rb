class Monster < ApplicationRecord
  validates :name, :birthdate, presence: true
end
