class AddRatingColumnToDoctorReviews < ActiveRecord::Migration[7.1]
  def change
    add_column :doctor_reviews, :rating, :float
  end
end
