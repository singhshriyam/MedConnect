class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor
  has_many :messages, dependent: :destroy
end
