class Monster < ApplicationRecord
  validates :name, :birthdate, :phone , presence: true, uniqueness: true
  validate :phone_format
  has_many :tweets, dependent: :destroy
  has_many :monster_followers, dependent: :destroy
  
  def phone_format
    if PhoneValidator.new(phone).valid?
      return
    else
      errors.add(:phone, :invalid)
    end
  end
end
