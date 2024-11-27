class Doctor < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :appointments, dependent: :destroy
  # has_many :users, through: :appointments
  has_many :language_abilities, dependent: :destroy
  has_many :languages, through: :language_abilities

  validates :first_name, :last_name, :city, :description, presence: true

  def full_name
    return "Dr. #{first_name} #{last_name}"
  end
end
