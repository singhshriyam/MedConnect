class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  attr_accessor :gender, :blood_group, :phone_number, :timezone, :language, :address, :allergies, :p_medication, :c_medication, :injuries, :surgeries, :chronic_diseases

  has_one_attached :photo
  has_many :messages
  has_one :doctor, dependent: :destroy
  has_many :appointments, dependent: :destroy
  has_many :questions
  # has_many :doctors, through: :appointments
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def doctor?
    doctor.present?
  end
end
