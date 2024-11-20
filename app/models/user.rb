class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :messages
  has_many :appointments, dependant: :destroy
  has_many :doctors
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
