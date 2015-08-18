class Doctor
  attr_reader(:name, :speciality)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @speciality = attributes.fetch(:speciality)
  end

  define_singleton_method(:all) do
    returned_hashes = DB.exec("SELECT * FROM doctors;")
    doctors = []
    returned_hashes.each() do |hash|
      name = hash.fetch('name')
      speciality = hash.fetch('speciality')
      doctors.push(Doctor.new({:name => name, :speciality => speciality}))
    end
    doctors
  end

  define_method(:save) do
    DB.exec("INSERT INTO doctors (name,speciality) VALUES ('#{@name}','#{@speciality}');")
  end

  define_method(:==) do |doctor|
    same_class = self.class().eql?(doctor.class())
    same_name = self.name().eql?(doctor.name())
    same_speciality = self.speciality().eql?(doctor.speciality())
    same_class.&(same_name).&(same_speciality)
  end

end
