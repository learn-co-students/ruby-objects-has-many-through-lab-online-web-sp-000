require "spec_helper"

describe "Appointment" do

  describe ".all_Appointments" do  # changed from .all to .all_Appointments
    it "knows about all appointments that have been created" do
      doctor_who = Doctor.new("The Doctor")
      hevydevy = Patient.new("Devin Townsend")
      doctor_who.new_appointment(hevydevy, "Friday, January 32nd")
      appointment = doctor_who.new_appointment(hevydevy, "Caturday, January Purrty2nd")
      doctor_who.new_appointment(hevydevy, "Satunday, January 34nd")

      expect(Appointments.all_Appointments).to include(appointment) # changed from .all to .all_Appointments, changed from Appointment to Appointments
    end
  end

  describe "#new" do
    it "initializes with a date, patient, and doctor" do
      doctor_who = Doctor.new("The Doctor")
      hevydevy = Patient.new("Devin Townsend")

      expect{Appointments.new("Friday, January 32nd", hevydevy, doctor_who)}.to_not raise_error
    end
  end
  
  # changed from Appointment to Appointments

  describe "#patient" do
    it "belongs to a patient" do
      doctor_who = Doctor.new("The Doctor")
      hevydevy = Patient.new("Devin Townsend")
      appointment = doctor_who.new_appointment(hevydevy, "Friday, January 32nd")
      expect(appointment.patient_name).to eq(hevydevy)  # changed from .patient to patient_name
    end
  end

  describe "#doctor" do
    it "belongs to a doctor" do
      doctor_who = Doctor.new("The Doctor")
      hevydevy = Patient.new("Devin Townsend")
      appointment = doctor_who.new_appointment(hevydevy, "Friday, January 32nd")
      expect(appointment.doctor_name).to eq(doctor_who) # changed from .doctor to .doctor_name
    end
  end
end
