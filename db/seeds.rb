# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create! (
  first_name: "hgfdajhfe",
  last_name: "a,ndf.awen",
)


Doctor.destroy_all

Doctor.create!(
  first_name: "Joel Mario",
  last_name: "Armenta",
  experience: 15,
  specialization: "cardiology",
  city: "Lübeck, SH",
  description: "I graduated from John Hopkins University in 2009 and made my residency at John Hopking Medicine.
  Shortly thereafter I moved to Lübeck in Schleswig Holstein. Now I have worked at Le Krankenwagon for 12 years.",
  education: "MD In Cardiology from John Hopkins University",
  availability: "M-F 13-14Uhr",
  price_per_hour: 70
  user_id: 1
  )

Doctor.create!(
  first_name: "Bruno",
  last_name: "Moschetto",
  experience: 7,
  specialization: "neurology",
  city: "Berlin, BE",
  description: "I graduated from the University of Buenos Aires in 2017 and made my residency at
  the Instituto Argentino de Diagnostico y Tratamiento. Shortly thereafter I moved to Berlin and recertified as a
  neurologist at Charite Universitätsmedizin Berlin. Now I have worked at Le Krankenwagon Berlin for 7 years.",
  education: "MD in cardiology from the Instituto Argentino de Diagnostico y Tratamiento",
  availability: "M-F 12-13Uhr",
  price_per_hour: 90
  user_id: 1
  )

Doctor.create!(
  first_name: "Judit",
  last_name: " Borrás Puig",
  experience: 12,
  specialization: "pediatry",
  city: "Hannover, NI",
  description: "I graduated from the Universidad Autónoma de Madrid in 2012 and made my residency at
  Hospital Infantil Universitario Niño Jesús. Later I moved to Hannover, NI and recertified as a
  paediatrician at Charite Universitätsmedizin Berlin. Now I live in Hannover. I now have worked at Le Krankenwagon
  Hanover for 7 years.",
  education: "MD in pediatry from the Universidad Autónoma de Madrid",
  availability: "M-F 14-15Uhr",
  price_per_hour: 75
  user_id: 1
  )

Doctor.create!(
  first_name: "Aditi",
  last_name: "Shriyam",
  experience: 10,
  specialization: "clinical psychology",
  city: "Berlin, BE",
  description: "I graduated from the University of Delhi in 2014 and made my residency at
  Fortis Flt Lt Rajan Dhall Hospital. Later I moved to Berlin, BE and recertified as a
  clinical psychology at Charite Universitätsmedizin Berlin. I now have worked at Le Krankenwagon Berlin, BE for 7
  years.",
  education: "MD in clinical psychology from Fortis Flt Lt Rajan Dhall Hospital",
  availability: "M-F 13-15Uhr",
  price_per_hour: 77
  user_id: 1
  )

Doctor.create!(
  first_name: "Judit",
  last_name: "Puig",
  experience: 12,
  specialization: "pediatry",
  city: "Hannover, NI",
  description: "I graduated from the Universidad Autónoma de Madrid in 2012 and made my residency at
  Hospital Infantil Universitario Niño Jesús. Later I moved to Hannover, NI and recertified as a
  paediatrician at Charite Universitätsmedizin Berlin. Now I live in Hannover. I now have worked at Le Krankenwagon
  Hanover for 7 years.",
  education: "MD in pediatry from the Universidad Autónoma de Madrid",
  availability: "M-F 14-15Uhr",
  price_per_hour: 75
  user_id: 1
  )

puts "Seeds created!"
