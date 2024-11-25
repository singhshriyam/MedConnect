class Language < ApplicationRecord
  has_many :language_abilities
  has_many :doctors, through: :language_abilities
end
