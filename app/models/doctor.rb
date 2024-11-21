class Doctor < ApplicationRecord
  belongs_to :user
  has_many :users
  has_many :appointments
  has_many :langauge_abilities
  has_many :langauges, through: :language_abilities
end
