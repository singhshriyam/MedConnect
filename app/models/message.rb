class Message < ApplicationRecord
  belongs_to :appointment
  belongs_to :user
end
