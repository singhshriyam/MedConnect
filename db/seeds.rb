# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Doctor.destroy_all

Doctor.create!(
  first_name: "Joel Mario",
  last_name: "Armenta",
  experience: 15,
  specialization: "cardiology",
  city: "Lübeck",
  description: "I graduated from John Hopkins University in 2008 and made my residency at John Hopking Medicine.
  Shortly thereafter I moved to Lübeck in Schleswig Holstein. Now I have worked at Le Krankenwagon for 12 years.",
  education: "MD In Cardiology from John Hopkins University",
  availability: "M-F 13-14 Uhr",
  price_per_hour: 70,
  user_id: 4
  )

Doctor.create!(
  first_name: "Bruno",
  last_name: "Moschetto",
  experience: 7,
  specialization: "neurology",
  city: "Berlin",
  description: "I graduated from the University of Buenos Aires in 2016 and made my residency at
  the Instituto Argentino de Diagnostico y Tratamiento. Shortly thereafter I moved to Berlin and recertified as a
  neurologist at Charite Universitätsmedizin Berlin. Now I have worked at Le Krankenwagon Berlin for 7 years.",
  education: "MD in cardiology from the Instituto Argentino de Diagnostico y Tratamiento",
  availability: "M-F 12-13 Uhr",
  price_per_hour: 90,
  user_id: 4
  )

Doctor.create!(
  first_name: "Judit",
  last_name: " Borrás Puig",
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
  user_id: 4
  )

Doctor.create!(
  first_name: "Aditi",
  last_name: "Shriyam",
  experience: 10,
  specialization: "clinical psychology",
  city: "Berlin",
  description: "I graduated from the University of Delhi in 2013 and made my residency at
  Fortis Flt Lt Rajan Dhall Hospital. Later I moved to Berlin, BE and recertified as a
  clinical psychology at Charite Universitätsmedizin Berlin. I now have worked at Le Krankenwagon Berlin, BE for 7
  years.",
  education: "MD in clinical psychology from Fortis Flt Lt Rajan Dhall Hospital",
  availability: "M-F 13-15 Uhr",
  price_per_hour: 77,
  user_id: 4
  )

Doctor.create!(
  first_name: "Lucas",
  last_name: "Grüner",
  experience: 8,
  specialization: "gastroentorology",
  city: "Hannover",
  description: "I graduated from Cambridge University in 2015 and made my residency at
  Cabridge Universoty hospital. Later I moved to Hannover, NI. I now have worked at Le Krankenwagon
  Hanover for 8 years.",
  education: "MD in gastroentorology from University of Cambridge",
  availability: "M-F 15-17 Uhr",
  price_per_hour: 60,
  user_id: 4
  )

Doctor.create!(
  first_name: "Alexander",
  last_name: "Dubovoy",
  experience: 6,
  specialization: "podiatry",
  city: "Lübeck",
  description: "I graduated from the Yale in 2017 and made my residency at
  Yale New Haven Hospital and recertified as a podiatrist at Charite Universitätsmedizin Berlin. Later I moved to Lübeck,SH.
  I now have worked at Le Krankenwagon Lübeck for 6 years.",
  education: "MD in gastroentorology from Yale University",
  availability: "M-F 12-15 Uhr",
  price_per_hour: 75,
  user_id: 4
  )

Doctor.create!(
  first_name: "Kat",
  last_name: "Syddall",
  experience: 6,
  specialization: "Otolaryngology",
  city: "Düsseldorf",
  description: "I graduated from the St George's University of London in 2017 and made my residency at
  The Royal London Hospital. Later I moved to Düsseldorf,NRW. I now have worked at Le Krankenwagon
  Düsseldorf for 6 years.",
  education: "MD in Otolaryngology from St George's University of London",
  availability: "M-F 12-14 Uhr",
  price_per_hour: 75,
  user_id: 4
  )

Doctor.create!(
  first_name: "Soňa",
  last_name: "Chaboud",
  experience: 10,
  specialization: "Dermatology",
  city: "Düsseldorf",
  description: "I graduated from First Moscow State Medical University in 2013 and made my residency at
  GMS Hospital. I then recertified as a Dermatologist at Charite Universitätsmedizin Berlin Later I moved to Düsseldorf,
  NRW. I now have worked at Le Krankenwagon Düsseldorf for 10 years.",
  education: "MD in Dermatology from First Moscow State Medical University",
  availability: "M-F 12-15 Uhr",
  price_per_hour: 80,
  user_id: 4
  )

Doctor.create!(
  first_name: "José",
  last_name: "Copeti",
  experience: 10,
  specialization: "Family Medicine",
  city: "Frankfurt",
  description: "I graduated from Universidade Federal do Rio de Janeiro in 2013 and made my residency at
  Hospital São Lucas Copacabana. Then I recertified as a docotr in Family Medicine at Charite Universitätsmedizin Berlin
  . After that I moved to Frankfurt, NRW. I now have worked at Le Krankenwagon Frankfurt for 10 years.",
  education: "MD in Family Medicine from Universidade Federal do Rio de Janeiro",
  availability: "M-F 12-13 Uhr",
  price_per_hour: 60,
  user_id: 4
  )

Doctor.create!(
  first_name: "Emre",
  last_name: "Ebeturk",
  experience: 17,
  specialization: "Family Practice Sports Medicine",
  city: "Frankfurt",
  description: "I graduated from Cambridge University in 2016 and made my residency at
  Cabridge Universoty hospital. After that I moved to Frankfurt, NRW. I now have worked at Le Krankenwagon Frankfurt for
   17 years.",
  education: "MD in Family Practice Sports Medicine from Universidade Federal do Rio de Janeiro",
  availability: "M-F 12-16 Uhr",
  price_per_hour: 80,
  user_id: 4
  )

puts "Seeds created!"
