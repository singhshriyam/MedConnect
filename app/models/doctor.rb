class Doctor < ApplicationRecord
  belongs_to :user
  has_many :users
  has_many :appointments
  has_many :language_abilities
  has_many :languages, through: :language_abilities
  has_one_attached :photo

  def full_name
    return "Dr. #{first_name} #{last_name}"
  end
end
