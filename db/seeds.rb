# Créer des médecins
5.times do
    Doctor.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      specialty: Faker::Job.title,
      zip_code: Faker::Address.zip_code
    )
  end
  
# Créer des patients
  10.times do
    Patient.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name
    )
  end
  
# Créer des rendez-vous associant des médecins et des patients
  20.times do
    doctor = Doctor.all.sample
    patient = Patient.all.sample
    date = Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)
  
    Appointment.create(doctor: doctor, patient: patient, date: date)
  end

# Créer des spécialités
specialties = ["Cardiologie", "Dermatologie", "Gynécologie", "Pédiatrie", "Psychiatrie"]
specialties.each do |specialty|
  Specialty.create(name: specialty)
end

# Associer des spécialités à des médecins
doctors = Doctor.all
specialties = Specialty.all

doctors.each do |doctor|
  random_specialties = specialties.sample(rand(1..3)) # Associer de 1 à 3 spécialités à chaque médecin
  doctor.specialties << random_specialties
end
