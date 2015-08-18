require('spec_helper')


describe(Doctor) do
  describe('#name') do
    it('returns the name of the doctor') do
      doc = Doctor.new({:name => 'Dr. Doolittle', :speciality => 'Veterinarian'})
      expect(doc.name()).to(eq('Dr. Doolittle'))
    end
  end

  describe('#speciality') do
    it('returns the speciality of the doctor') do
      doc = Doctor.new({:name => 'Dr. Doolittle', :speciality => 'Veterinarian'})
      expect(doc.speciality()).to(eq('Veterinarian'))
    end
  end

  describe(".all") do
    it('initially is empty') do
      expect(Doctor.all()).to(eq([]))
    end
  end

  describe("#save") do
    it('should save a doctor to the database') do
      doc = Doctor.new({:name => 'Dr. Doolittle', :speciality => 'Veterinarian'})
      doc.save()
      expect(Doctor.all()).to(eq([doc]))
    end
  end

  describe("#==") do
   it ('should recognize two objects as equal if they have the same properties') do
     doctor1 = Doctor.new({:name => 'Dr. Doolittle', :speciality => 'Veterinarian'})
     doctor2 = Doctor.new({:name => 'Dr. Doolittle', :speciality => 'Veterinarian'})
     expect(doctor1.==(doctor2)).to(eq(true))
     expect(doctor1).to(eq(doctor2))
   end
  end
end
