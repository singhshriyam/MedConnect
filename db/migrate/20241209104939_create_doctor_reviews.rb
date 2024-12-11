class CreateDoctorReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :doctor_reviews do |t|
      t.string :title
      t.text :comment
      t.references :user, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
