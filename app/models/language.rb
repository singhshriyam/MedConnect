class Language < ApplicationRecord
  has_many :language_abilities, dependent: :destroy
  has_many :doctors, through: :language_abilities
end
