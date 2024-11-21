class LanguageAbility < ApplicationRecord
  belongs_to :doctor
  belongs_to :language
  has_many :langauges
end
