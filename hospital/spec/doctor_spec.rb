require('spec_helper')


describe(Doctor) do
  describe('#name') do
    it('returns the name of the doctor') do
      doc = Doctor.new({:name => 'Dr. Doolittle', :specialty => 'Veterinarian'})
      expect(doc.name()).to(eq('Dr. Doolittle'))
    end
  end

  describe('#specialty') do
    it('returns the specialty of the doctor') do
      doc = Doctor.new({:name => 'Dr. Doolittle', :specialty => 'Veterinarian'})
      expect(doc.specialty()).to(eq('Veterinarian'))
    end
  end
end
