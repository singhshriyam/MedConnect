require 'faker'
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Deleting the database"

Question.delete_all
Message.delete_all
Appointment.delete_all
LanguageAbility.delete_all
Language.delete_all
Doctor.delete_all
User.delete_all
DoctorReview.delete_all

user1 = User.create!(
  first_name: "joel mario",
  last_name: "armenta",
  email: "joel@gmail.com",
  password: "joel123",
  year_of_birth: 1986
)
file = URI.open("https://res.cloudinary.com/dcdn0sx7c/image/upload/v1732697594/Joel_Mario_Armenta_qvb4ha.png")
user1.photo.attach(io: file, filename: "joel.png", content_type: "image/png")

doctor1 = Doctor.create!(
  first_name: user1.first_name,
  last_name: user1.last_name,
  experience: 15,
  specialization: "cardiology",
  city: "lübeck",
  description: "I graduated from John Hopkins University in 2008 and made my residency at John Hopking Medicine.
  Shortly thereafter I moved to Lübeck in Schleswig Holstein. Now I have worked at Le Krankenwagon for 12 years.",
  education: "MD In Cardiology from John Hopkins University",
  availability: "M 10:00-14:00 / T 9:00-16:00 / W 10:00-14:00, 15:00-18:00 / R 14:00-20:00 / F 12:00-16:00",
  price_per_hour: 70,
  user_id: user1.id
  )
doctor1.photo.attach(user1.photo.blob)

user2 = User.create!(
  first_name: "bruno",
  last_name: "moschetto",
  email: "bruno@gmail.com",
  password: "bruno123",
  year_of_birth: 1995
)
file = URI.open("https://res.cloudinary.com/dcdn0sx7c/image/upload/v1732697578/Bruno_Moschetto_vwtgt6.jpg")
user2.photo.attach(io: file, filename: "bruno.png", content_type: "image/png")

doctor2 = Doctor.create!(
  first_name: user2.first_name,
  last_name: user2.last_name,
  experience: 7,
  specialization: "generalist",
  city: "berlin",
  description: "I graduated from the University of Buenos Aires in 2016 and made my residency at
  the Instituto Argentino de Diagnostico y Tratamiento. Shortly thereafter I moved to Berlin and recertified as a
  neurologist at Charite Universitätsmedizin Berlin. Now I have worked at Le Krankenwagon Berlin for 7 years.",
  education: "MD in cardiology from the Instituto Argentino de Diagnostico y Tratamiento",
  availability: "M 10:00-14:00 / T 9:00-16:00 / W 10:00-14:00, 15:00-18:00 / R 14:00-20:00 / F 12:00-16:00",
  price_per_hour: 90,
  user_id: user2.id
  )
  doctor2.photo.attach(user2.photo.blob)

user3 = User.create!(
  first_name: "judit",
  last_name: "borrás",
  email: "judit@gmail.com",
  password: "judit123",
  year_of_birth: 1989
)
file = URI.open("https://res.cloudinary.com/dcdn0sx7c/image/upload/v1732697604/Judit_Borras_dytgx3.png")
user3.photo.attach(io: file, filename: "judit.png", content_type: "image/png")

doctor3 = Doctor.create!(
  first_name: user3.first_name,
  last_name: user3.last_name,
  experience: 12,
  specialization: "pediatry",
  city: "hannover",
  description: "I graduated from the Universidad Autónoma de Madrid in 2011 and made my residency at
  Hospital Infantil Universitario Niño Jesús. Later I moved to Hannover, NI and recertified as a
  paediatrician at Charite Universitätsmedizin Berlin. Now I live in Hannover. I now have worked at Le Krankenwagon
  Hanover for 7 years.",
  education: "MD in pediatry from the Universidad Autónoma de Madrid",
  availability: "M 10:00-14:00 / T 9:00-16:00 / W 10:00-14:00, 15:00-18:00 / R 14:00-20:00 / F 12:00-16:00 ",
  price_per_hour: 75,
  user_id: user3.id
  )
  doctor3.photo.attach(user3.photo.blob)

user4 = User.create!(
  first_name: "aditi",
  last_name: "shriyam",
  email: "aditi@gmail.com",
  password: "aditi123",
  year_of_birth: 1992
)
file = URI.open("https://res.cloudinary.com/dcdn0sx7c/image/upload/v1732697497/Aditi_Shriyam_dtqcsv.jpg")
user4.photo.attach(io: file, filename: "aditi.png", content_type: "image/png")

doctor4 = Doctor.create!(
  first_name: user4.first_name,
  last_name: user4.last_name,
  experience: 10,
  specialization: "psychology",
  city: "berlin",
  description: "I graduated from the University of Delhi in 2013 and made my residency at
  Fortis Flt Lt Rajan Dhall Hospital. Later I moved to Berlin, BE and recertified as a
  clinical psychology at Charite Universitätsmedizin Berlin. I now have worked at Le Krankenwagon Berlin, BE for 7
  years.",
  education: "MD in clinical psychology from Fortis Flt Lt Rajan Dhall Hospital",
  availability: "M 10:00-14:00 / T 9:00-16:00 / W 10:00-14:00, 15:00-18:00 / R 14:00-20:00 / F 10:00-14:00 ",
  price_per_hour: 77,
  user_id: user4.id
  )
  doctor4.photo.attach(user4.photo.blob)

user5 = User.create!(
  first_name: "lucas",
  last_name: "grüner",
  email: "lucas@gmail.com",
  password: "lucas123",
  year_of_birth: 1993
)
file = URI.open("https://res.cloudinary.com/dcdn0sx7c/image/upload/v1732697614/Lucas_Gr%C3%BCner_ebc4jn.jpg")
user5.photo.attach(io: file, filename: "lucas.png", content_type: "image/png")

doctor5 = Doctor.create!(
  first_name: user5.first_name,
  last_name: user5.last_name,
  experience: 8,
  specialization: "gastroentorology",
  city: "hannover",
  description: "I graduated from Cambridge University in 2015 and made my residency at
  Cabridge Universoty hospital. Later I moved to Hannover, NI. I now have worked at Le Krankenwagon
  Hanover for 8 years.",
  education: "MD in gastroentorology from University of Cambridge",
  availability: "M 10:00-14:00 / T 9:00-16:00 / W 10:00-14:00, 15:00-18:00 / R 14:00-20:00 / F 12:00-16:00 ",
  price_per_hour: 60,
  user_id: user5.id
  )
  doctor5.photo.attach(user5.photo.blob)


user6 = User.create!(
  first_name: "alexander",
  last_name: "dubovoy",
  email: "alex@gmail.com",
  password: "alex123",
  year_of_birth: 1994
)
file = URI.open("https://res.cloudinary.com/dcdn0sx7c/image/upload/v1732697522/Alexander_Dubovoy_yk2xnv.jpg")
user6.photo.attach(io: file, filename: "alex.png", content_type: "image/png")

doctor6 = Doctor.create!(
  first_name: user6.first_name,
  last_name: user6.last_name,
  experience: 6,
  specialization: "podiatry",
  city: "lübeck",
  description: "I graduated from the Yale in 2017 and made my residency at
  Yale New Haven Hospital and recertified as a podiatrist at Charite Universitätsmedizin Berlin. Later I moved to Lübeck,SH.
  I now have worked at Le Krankenwagon Lübeck for 6 years.",
  education: "MD in gastroentorology from Yale University",
  availability: "M 10:00-14:00 / T 9:00-16:00 / W 10:00-14:00, 15:00-18:00 / R 14:00-20:00 / F 12:00-16:00 ",
  price_per_hour: 75,
  user_id: user6.id
  )
  doctor6.photo.attach(user6.photo.blob)

user7 = User.create!(
  first_name: "kat",
  last_name: "syddall",
  email: "kat@gmail.com",
  password: "kat123",
  year_of_birth: 1995
)
file = URI.open("https://res.cloudinary.com/dcdn0sx7c/image/upload/v1732697611/Kat_Syddall_dmugtj.jpg")
user7.photo.attach(io: file, filename: "alex.png", content_type: "image/png")

doctor7 = Doctor.create!(
  first_name: user7.first_name,
  last_name: user7.last_name,
  experience: 6,
  specialization: "otolaryngology",
  city: "düsseldorf",
  description: "I graduated from the St George's University of London in 2017 and made my residency at
  The Royal London Hospital. Later I moved to Düsseldorf,NRW. I now have worked at Le Krankenwagon
  Düsseldorf for 6 years.",
  education: "MD in Otolaryngology from St George's University of London",
  availability: "M 10:00-14:00 / T 9:00-16:00 / W 10:00-14:00, 15:00-18:00 / R 14:00-20:00 / F 12:00-16:00 ",
  price_per_hour: 75,
  user_id: user7.id
  )
  doctor7.photo.attach(user7.photo.blob)

user8 = User.create!(
  first_name: "olivier",
  last_name: "girardot",
  email: "oli@gmail.com",
  password: "oli123",
  year_of_birth: 1996
)
file = URI.open("https://ca.slack-edge.com/T02NE0241-USL1K1LKA-94322c3f7d7c-512")
user8.photo.attach(io: file, filename: "oli.png", content_type: "image/png")

doctor8 = Doctor.create!(
  first_name: user8.first_name,
  last_name: user8.last_name,
  experience: 10,
  specialization: "dermatology",
  city: "düsseldorf",
  description: "I graduated from First Moscow State Medical University in 2013 and made my residency at
  GMS Hospital. I then recertified as a Dermatologist at Charite Universitätsmedizin Berlin Later I moved to Düsseldorf,
  NRW. I now have worked at Le Krankenwagon Düsseldorf for 10 years.",
  education: "MD in Dermatology from First Moscow State Medical University",
  availability: "M 10:00-14:00 / T 9:00-16:00 / W 10:00-14:00, 15:00-18:00 / R 14:00-20:00 / F 12:00-16:00 ",
  price_per_hour: 80,
  user_id: user8.id
  )
  doctor8.photo.attach(user8.photo.blob)

user9 = User.create!(
  first_name: "josé",
  last_name: "copeti",
  email: "jose@gmail.com",
  password: "jose123",
  year_of_birth: 1994
)
file = URI.open("https://res.cloudinary.com/dcdn0sx7c/image/upload/v1732697657/Jos%C3%A9_Copeti_qnyizg.jpg")
user9.photo.attach(io: file, filename: "sona.png", content_type: "image/png")

doctor9 = Doctor.create!(
  first_name: user9.first_name,
  last_name: user9.last_name,
  experience: 10,
  specialization: "medicine",
  city: "frankfurt",
  description: "I graduated from Universidade Federal do Rio de Janeiro in 2013 and made my residency at
  Hospital São Lucas Copacabana. Then I recertified as a docotr in Family Medicine at Charite Universitätsmedizin Berlin
  . After that I moved to Frankfurt, NRW. I now have worked at Le Krankenwagon Frankfurt for 10 years.",
  education: "MD in Family Medicine from Universidade Federal do Rio de Janeiro",
  availability: "M 10:00-14:00 / T 9:00-16:00 / W 10:00-14:00, 15:00-18:00 / R 14:00-20:00 / F 12:00-16:00 ",
  price_per_hour: 60,
  user_id: user9.id
  )
  doctor9.photo.attach(user9.photo.blob)

user10 = User.create!(
  first_name: "emre",
  last_name: "ebeturk",
  email: "emre@gmail.com",
  password: "emre123",
  year_of_birth: 1988
)
file = URI.open("https://res.cloudinary.com/dcdn0sx7c/image/upload/v1732697585/Emre_Ebeturk_x2k3mx.jpg")
user10.photo.attach(io: file, filename: "emre.png", content_type: "image/png")

doctor10 = Doctor.create!(
  first_name: user10.first_name,
  last_name: user10.last_name,
  experience: 17,
  specialization: "sports",
  city: "frankfurt",
  description: "I graduated from Cambridge University in 2016 and made my residency at
  Cabridge Universoty hospital. After that I moved to Frankfurt, NRW. I now have worked at Le Krankenwagon Frankfurt for
   17 years.",
  education: "MD in Family Practice Sports Medicine from Universidade Federal do Rio de Janeiro",
  availability: "M 10:00-14:00 / T 9:00-16:00 / W 10:00-14:00, 15:00-18:00 / R 14:00-20:00 / F 12:00-16:00 ",
  price_per_hour: 80,
  user_id: user10.id
  )
  doctor10.photo.attach(user10.photo.blob)

user11 = User.create!(
  first_name: "soojin",
  last_name: "kim",
  email: "soojin@gmail.com",
  password: "soojin123",
  year_of_birth: 1993
)
file = URI.open("https://ca.slack-edge.com/T02NE0241-U058H1AU545-bcd99cf71336-512")
user11.photo.attach(io: file, filename: "soojin.png", content_type: "image/png")

doctor11 = Doctor.create!(
  first_name: user11.first_name,
  last_name: user11.last_name,
  experience: 12,
  specialization: "cardiology",
  city: "oxford, OX",
  description: "I graduated from the Oxford University in Oxford in 2012 and made my residency at
  Royal London Hospital. Later I moved to Hannover, NI and recertified as a
  paediatrician at Charite Universitätsmedizin Berlin. Now I live in Hannover. I now have worked at Le Krankenwagon
  Hanover for 7 years.",
  education: "MD in cardiology surgery from the University of London",
  availability: "M 10:00-14:00 / T 9:00-16:00 / W 10:00-14:00, 15:00-18:00 / R 14:00-20:00 / F 12:00-16:00 ",
  price_per_hour: 75,
  user_id: user11.id
  )
  doctor11.photo.attach(user11.photo.blob)

puts "Seeds from LeWagon created!"

puts "seeding languages"

spoken_words = ["english", "spanish", "german", "russian", "hindi", "korean", "italian", "french", "portuguese"]

spoken_words.each do |spocken_word|
  Language.create!(name: spocken_word)
end

languages = Language.all

puts "seeding users"
5.times do
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 6),
    year_of_birth: Faker::Number.between(from: 1950, to: 2005)
  )
  file = URI.open("https://picsum.photos/images")
  user.photo.attach(io: file, filename: "#{user.first_name.downcase}_profile.png", content_type: "image/png")
end

users = User.all

hospital_positions = ["oncology", "gastroentorology", "psychiatry", "family", "otolaryngology", "dermatology", "neurology", "pediatry", "cardiology", "rheumatology", "ophthalmology", "podiatry", "pulmonology"]

downtown = ["berlin", "lübeck", "frankfurt", "hannover", "düsseldorf", "essen", "dortmund", "leipzig", "stuutgard", "hamburg", "cologne", "nuremburg"]

puts "seeding doctors"
5.times do
  user = users.sample
  doctor = Doctor.create!(
    first_name: user.first_name,
    last_name: user.last_name,
    experience: Faker::Number.between(from: 1, to: 40),
    specialization: hospital_positions.sample,
    city: downtown.sample,
    description: Faker::Lorem.sentence(word_count: 30),
    education: Faker::University.name,
    availability: "M 10:00-17:00 / T 9:00-16:00 / W 9:00-16:00 / R 9:00-16:00 / F 10:00-14:00",
    user_id: user.id,
    price_per_hour: Faker::Number.decimal(l_digits: 2, r_digits: 2)
  )
  doctor.photo.attach(user.photo.blob)
end

doctors = Doctor.all

puts "seeding language ability"
doctors.each do |doctor|
  rand(2..3).times do
    LanguageAbility.create!(
      doctor_id: doctor.id,
      language_id: languages.sample.id
    )
  end
end

puts "seeding appointments"
50.times do
  Appointment.create!(
    starts_at: Faker::Time.between_dates(from: Date.today, to: Date.today + 30, period: :day),
    ends_at: Faker::Time.between_dates(from: Date.today + 31, to: Date.today + 60, period: :day),
    message: Faker::Lorem.paragraph(sentence_count: 3),
    symptoms: Faker::Lorem.sentence(word_count: 10),
    medical_history: Faker::Lorem.sentence(word_count: 20),
    prescription: Faker::Lorem.sentence(word_count: 10),
    total_price: Faker::Number.decimal(l_digits: 3, r_digits: 2),
    user_id: users.sample.id,
    doctor_id: doctors.sample.id
  )
end

appointments = Appointment.all

puts "seeding messages"
50.times do
  Message.create!(
    content: Faker::Lorem.sentence(word_count: 15),
    appointment_id: appointments.sample.id,
    user_id: users.sample.id
  )
end

puts "Seeding doctor reviews"

doctors.each do |doctor|
  [3, 4, 5].sample.times do
    DoctorReview.create!(
      doctor_id: doctor.id,
      user_id: User.all.sample.id,
      title: Faker::Lorem.sentence(word_count: 3),
      comment: Faker::Lorem.sentence(word_count: 30),
      rating: [3, 4, 5].sample
    )
  end
end

puts "Seeding completed!"
