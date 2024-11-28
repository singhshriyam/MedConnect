class Doctor < ApplicationRecord
  belongs_to :user
  has_many :users
  has_many :appointments
  has_many :language_abilities
  has_many :languages, through: :language_abilities

  def full_name
    return "Dr. #{first_name} #{last_name}"
  end

  def formatted_availability
    # Diccionary to translate the days of the  week from seeds
    days_of_week = {
      'M' => 'Monday',
      'T' => 'Tuesday',
      'W' => 'Wednesday',
      'R' => 'Thursday', # Using 'R' for Thursday
      'F' => 'Friday',
      'S' => 'Saturday',
      'U' => 'Sunday'
    }
    # Split the string by "/"
    availability.split(' / ').map do |each_availability|
      # Get the day (first part) and the schedules (rest)
      day_abbr, times = each_availability.split(' ', 2)
      full_day = days_of_week[day_abbr] || day_abbr # Translates or lets the original one

      # Final phrase format
      "#{full_day}:     #{times}"
    end
  end
end
