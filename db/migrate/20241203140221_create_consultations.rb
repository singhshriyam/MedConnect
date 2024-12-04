class CreateConsultations < ActiveRecord::Migration[7.1]
  def change
    create_table :consultations do |t|
      t.string :room_link

      t.timestamps
    end
  end
end
