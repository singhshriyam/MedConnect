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

Message.delete_all
Appointment.delete_all
LanguageAbility.delete_all
Language.delete_all
Doctor.delete_all
User.delete_all

user1 = User.create!(
  first_name: "Joel Mario",
  last_name: "Armenta",
  email: "joel@gmail.com",
  password: "joel123",
  year_of_birth: 1986
)

Doctor.create!(
  first_name: user1.first_name,
  last_name: user1.last_name,
  experience: 15,
  specialization: "cardiology",
  city: "Lübeck",
  description: "I graduated from John Hopkins University in 2008 and made my residency at John Hopking Medicine.
  Shortly thereafter I moved to Lübeck in Schleswig Holstein. Now I have worked at Le Krankenwagon for 12 years.",
  education: "MD In Cardiology from John Hopkins University",
  availability: "M-F 13-14 Uhr",
  price_per_hour: 70,
  user_id: user1.id
  )

user2 = User.create!(
  first_name: "Bruno",
  last_name: "Moschetto",
  email: "bruno@gmail.com",
  password: "bruno123",
  year_of_birth: 1995
)

Doctor.create!(
  first_name: user2.first_name,
  last_name: user2.last_name,
  experience: 7,
  specialization: "neurology",
  city: "Berlin",
  description: "I graduated from the University of Buenos Aires in 2016 and made my residency at
  the Instituto Argentino de Diagnostico y Tratamiento. Shortly thereafter I moved to Berlin and recertified as a
  neurologist at Charite Universitätsmedizin Berlin. Now I have worked at Le Krankenwagon Berlin for 7 years.",
  education: "MD in cardiology from the Instituto Argentino de Diagnostico y Tratamiento",
  availability: "M-F 12-13 Uhr",
  price_per_hour: 90,
  user_id: user2.id
  )

user3 = User.create!(
  first_name: "Judit",
  last_name: " Borrás Puig",
  email: "judit@gmail.com",
  password: "judit123",
  year_of_birth: 1989
)

Doctor.create!(
  first_name: user3.first_name,
  last_name: user3.last_name,
  experience: 12,
  specialization: "pediatry",
  city: "Hannover",
  description: "I graduated from the Universidad Autónoma de Madrid in 2011 and made my residency at
  Hospital Infantil Universitario Niño Jesús. Later I moved to Hannover, NI and recertified as a
  paediatrician at Charite Universitätsmedizin Berlin. Now I live in Hannover. I now have worked at Le Krankenwagon
  Hanover for 7 years.",
  education: "MD in pediatry from the Universidad Autónoma de Madrid",
  availability: "M-F 14-15 Uhr",
  price_per_hour: 75,
  user_id: user3.id
  )

user4 = User.create!(
  first_name: "Aditi",
  last_name: "Shriyam",
  email: "aditi@gmail.com",
  password: "aditi123",
  year_of_birth: 1992
)

Doctor.create!(
  first_name: user4.first_name,
  last_name: user4.last_name,
  experience: 10,
  specialization: "psychology",
  city: "Berlin",
  description: "I graduated from the University of Delhi in 2013 and made my residency at
  Fortis Flt Lt Rajan Dhall Hospital. Later I moved to Berlin, BE and recertified as a
  clinical psychology at Charite Universitätsmedizin Berlin. I now have worked at Le Krankenwagon Berlin, BE for 7
  years.",
  education: "MD in clinical psychology from Fortis Flt Lt Rajan Dhall Hospital",
  availability: "M-F 13-15 Uhr",
  price_per_hour: 77,
  user_id: user4.id
  )

user5 = User.create!(
  first_name: "Lucas",
  last_name: "Grüner",
  email: "lucas@gmail.com",
  password: "lucas123",
  year_of_birth: 1993
)

Doctor.create!(
  first_name: user5.first_name,
  last_name: user5.last_name,
  experience: 8,
  specialization: "gastroentorology",
  city: "Hannover",
  description: "I graduated from Cambridge University in 2015 and made my residency at
  Cabridge Universoty hospital. Later I moved to Hannover, NI. I now have worked at Le Krankenwagon
  Hanover for 8 years.",
  education: "MD in gastroentorology from University of Cambridge",
  availability: "M-F 15-17 Uhr",
  price_per_hour: 60,
  user_id: user5.id
  )

user6 = User.create!(
  first_name: "Alexander",
  last_name: "Dubovoy",
  email: "alex@gmail.com",
  password: "alex123",
  year_of_birth: 1994
)

Doctor.create!(
  first_name: user6.first_name,
  last_name: user6.last_name,
  experience: 6,
  specialization: "podiatry",
  city: "Lübeck",
  description: "I graduated from the Yale in 2017 and made my residency at
  Yale New Haven Hospital and recertified as a podiatrist at Charite Universitätsmedizin Berlin. Later I moved to Lübeck,SH.
  I now have worked at Le Krankenwagon Lübeck for 6 years.",
  education: "MD in gastroentorology from Yale University",
  availability: "M-F 12-15 Uhr",
  price_per_hour: 75,
  user_id: user6.id
  )

user7 = User.create!(
  first_name: "Kat",
  last_name: "Syddall",
  email: "kat@gmail.com",
  password: "kat123",
  year_of_birth: 1995
)

Doctor.create!(
  first_name: user7.first_name,
  last_name: user7.last_name,
  experience: 6,
  specialization: "Otolaryngology",
  city: "Düsseldorf",
  description: "I graduated from the St George's University of London in 2017 and made my residency at
  The Royal London Hospital. Later I moved to Düsseldorf,NRW. I now have worked at Le Krankenwagon
  Düsseldorf for 6 years.",
  education: "MD in Otolaryngology from St George's University of London",
  availability: "M-F 12-14 Uhr",
  price_per_hour: 75,
  user_id: user7.id
  )

user8 = User.create!(
  first_name: "Soňa",
  last_name: "Chaboud",
  email: "sona@gmail.com",
  password: "sona123",
  year_of_birth: 1996
)

Doctor.create!(
  first_name: user8.first_name,
  last_name: user8.last_name,
  experience: 10,
  specialization: "Dermatology",
  city: "Düsseldorf",
  description: "I graduated from First Moscow State Medical University in 2013 and made my residency at
  GMS Hospital. I then recertified as a Dermatologist at Charite Universitätsmedizin Berlin Later I moved to Düsseldorf,
  NRW. I now have worked at Le Krankenwagon Düsseldorf for 10 years.",
  education: "MD in Dermatology from First Moscow State Medical University",
  availability: "M-F 12-15 Uhr",
  price_per_hour: 80,
  user_id: user8.id
  )

user9 = User.create!(
  first_name: "José",
  last_name: "Copeti",
  email: "jose@gmail.com",
  password: "jose123",
  year_of_birth: 1994
)

Doctor.create!(
  first_name: user9.first_name,
  last_name: user9.last_name,
  experience: 10,
  specialization: "Medicine",
  city: "Frankfurt",
  description: "I graduated from Universidade Federal do Rio de Janeiro in 2013 and made my residency at
  Hospital São Lucas Copacabana. Then I recertified as a docotr in Family Medicine at Charite Universitätsmedizin Berlin
  . After that I moved to Frankfurt, NRW. I now have worked at Le Krankenwagon Frankfurt for 10 years.",
  education: "MD in Family Medicine from Universidade Federal do Rio de Janeiro",
  availability: "M-F 12-13 Uhr",
  price_per_hour: 60,
  user_id: user9.id
  )

user10 = User.create!(
  first_name: "Emre",
  last_name: "Ebeturk",
  email: "emre@gmail.com",
  password: "emre123",
  year_of_birth: 1988
)

Doctor.create!(
  first_name: user10.first_name,
  last_name: user10.last_name,
  experience: 17,
  specialization: "Sports",
  city: "Frankfurt",
  description: "I graduated from Cambridge University in 2016 and made my residency at
  Cabridge Universoty hospital. After that I moved to Frankfurt, NRW. I now have worked at Le Krankenwagon Frankfurt for
   17 years.",
  education: "MD in Family Practice Sports Medicine from Universidade Federal do Rio de Janeiro",
  availability: "M-F 12-16 Uhr",
  price_per_hour: 80,
  user_id: user10.id

  )

user11 = User.create!(
  first_name: "Soojin",
  last_name: "Kim",
  email: "soojin@gmail.com",
  password: "soojin123",
  year_of_birth: 1993
)

Doctor.create!(
  first_name: user11.first_name,
  last_name: user11.last_name,
  experience: 12,
  specialization: "cardiología",
  city: "Oxford, OX",
  description: "I graduated from the Oxford University in Oxford in 2012 and made my residency at
  Royal London Hospital. Later I moved to Hannover, NI and recertified as a
  paediatrician at Charite Universitätsmedizin Berlin. Now I live in Hannover. I now have worked at Le Krankenwagon
  Hanover for 7 years.",
  education: "MD in cardiology surgery from the University of London",
  availability: "M-F 14-15Uhr",
  price_per_hour: 75,
  user_id: user11.id
  )

puts "Seeds from LeWagon created!"



puts "seeding languages"
30.times do
  Language.create!(name: Faker::Nation.language)
end

languages = Language.all

puts "seeding users"
50.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 6),
    year_of_birth: Faker::Number.between(from: 1950, to: 2005)
  )
end

users = User.all

puts "seeding doctors"
20.times do
  user = users.sample
  doctor = Doctor.create!(
    first_name: user.first_name,
    last_name: user.last_name,
    experience: Faker::Number.between(from: 1, to: 40),
    specialization: Faker::Job.field,
    city: Faker::Address.city,
    description: Faker::Lorem.sentence(word_count: 20),
    education: Faker::University.name,
    availability: Faker::Boolean.boolean,
    user_id: user.id,
    price_per_hour: Faker::Number.decimal(l_digits: 2, r_digits: 2)
  )
end

doctors = Doctor.all

puts "seeding language ability"
doctors.each do |doctor|
  rand(1..5).times do
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

puts "Seeding completed!"
