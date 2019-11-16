require 'spec_helper'

describe 'Doctor' do
  describe '#doctor_name' do  ### changed from name to doctor_name
    it 'has a name' do
      doctor_who = Doctor.new('The Doctor')
      expect(doctor_who.doctor_name).to eq('The Doctor')  ### changed from .name to .doctor_name
    end
  end

  describe '#new' do
    it 'initializes with a name and adds itself to an array of all doctors' do
      doctor_smith = Doctor.new('John Smith')
      expect { Doctor.new('Martha Jones') }.to_not raise_error
      expect(Doctor.all_Doctors).to include(doctor_smith)  ### changed from .all to .all_Doctors
    end
  end


  describe '#new_appointment' do
    it 'given a date and a patient, creates a new appointment' do
      doctor_who = Doctor.new('The Doctor')
      hevydevy = Patient.new('Devin Townsend')
      appointment = doctor_who.new_appointment(hevydevy, 'Friday, January 32nd')
      expect(doctor_who.appointments).to include(appointment)
      expect(appointment.doctor_name).to eq(doctor_who)  ### changed .doctor to .doctor_name
    end
  end

  describe '#appointments' do
    it 'has many appointments' do
      doctor_who = Doctor.new('The Doctor')
      hevydevy = Patient.new('Devin Townsend')
      doctor_who.new_appointment(hevydevy, 'Friday, January 32nd')
      appointment = doctor_who.new_appointment(hevydevy, 'Saturday, January 33rd')
      doctor_who.new_appointment(hevydevy, 'Rootenskadootenday, January 315th')
      expect(doctor_who.appointments).to include(appointment)
    end
  end

  describe '#all_patients' do  # changed from #patients to #all_patients
    it 'has many patients, through appointments' do
      doctor_who = Doctor.new('The Doctor')
      hevydevy = Patient.new('Devin Townsend')
      doctor_who.new_appointment(hevydevy, 'Friday, January 32nd')
# binding.pry
      expect(doctor_who.all_patients).to include(hevydevy)  # changed from .patients to .all_patients
    end
  end
end
