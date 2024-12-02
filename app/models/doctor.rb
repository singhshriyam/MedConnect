class Doctor < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :appointments, dependent: :destroy
  # has_many :users, through: :appointments
  has_many :language_abilities, dependent: :destroy
  has_many :languages, through: :language_abilities
  has_neighbors :embedding
  # after_create :set_embedding

  validates :first_name, :last_name, :city, :description, presence: true

  def full_name
    return "Dr. #{first_name} #{last_name}"
  end

  private

  def set_embedding
    # binding.pry
    client = OpenAI::Client.new
    response = client.embeddings(
      parameters: {
        model: 'text-embedding-3-small',
        # input: "Doctor: #{full_name}. Description: #{description}"
        input: "Hellow!"
      }
    )
    embedding = response['data'][0]['embedding']
    update(embedding: embedding)
  end
end
