class Doctor
  attr_reader(:name, :specialty)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @specialty = attributes.fetch(:specialty)
  end


end
