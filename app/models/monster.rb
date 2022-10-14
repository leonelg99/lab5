class Monster < ApplicationRecord
  validates :name, :birthdate, presence: true
  has_many :tweets, dependent: :destroy
  has_many :monster_followers, dependent: :destroy
end
