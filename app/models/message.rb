class Message < ApplicationRecord
  belongs_to :appointment
  belongs_to :user
  after_create_commit :broadcast_message

  private

  def broadcast_message
    broadcast_append_to "appointment_#{appointment.id}_messages",
                        partial: "messages/message",
                        target: "messages",
                        locals: { message: self, user: user }
  end
end
