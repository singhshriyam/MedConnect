class DoctorReview < ApplicationRecord
  belongs_to :user
  belongs_to :doctor
  validates :title, :comment, :rating, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5, only_integer: true }
end
