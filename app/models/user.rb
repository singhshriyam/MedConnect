class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  attr_accessor :gender, :blood_group, :phone_number, :timezone, :language, :address

  has_one_attached :photo
  has_many :messages
  has_many :appointments, dependent: :destroy
  has_many :doctors
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
