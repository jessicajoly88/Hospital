require('spec_helper')

describe(Patient) do

  describe('#name') do
    it('returns the name of the patient') do
      patient = Patient.new({:name => 'Mike', :birthdate => Date.new(1988,8,21)})
      expect(patient.name).to(eq('Mike'))
    end
  end



end
