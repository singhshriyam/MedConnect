class Doctor < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :appointments, dependent: :destroy
  has_many :language_abilities, dependent: :destroy
  has_many :languages, through: :language_abilities
  has_many :users, through: :appointments
  has_neighbors :embedding
  after_create :set_embedding

  validates :first_name, :last_name, :city, :description, presence: true

  def full_name
    return "#{first_name.capitalize} #{last_name.capitalize}"
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

  private

  def set_embedding
    client = OpenAI::Client.new
    response = client.embeddings(
      parameters: {
        model: 'text-embedding-3-small',
        input: "Doctor: #{full_name}. Description: #{description}"
      }
    )
    embedding = response['data'][0]['embedding']
    update(embedding: embedding)
  end
end
