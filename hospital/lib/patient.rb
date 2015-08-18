class Patient
  attr_reader(:name, :birthdate)

  define_method(:initialize) do |attribrutes|
    @name = attribrutes.fetch(:name)
    @birthdate = attribrutes.fetch(:birthdate)
  end

  define_singleton_method(:all) do
    all_patients = DB.exec("SELECT * FROM patients;")
    patients = []
    all_patients.each() do |patient|
      name = patient.fetch("name")
      birthdate = birthdate.fetch("birthdate")
      patients.push(Patient.new({:name => name, :birthdate => Date.parse(birthdate)}))
    end
    patients
  end
end
