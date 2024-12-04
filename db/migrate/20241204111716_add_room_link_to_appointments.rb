class AddRoomLinkToAppointments < ActiveRecord::Migration[7.1]
  def change
    add_column :appointments, :room_link, :string
  end
end
