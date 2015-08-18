class Patient
  attr_reader(:name, :birthdate)

  define_method(:initialize) do |attribrutes|
    @name = attribrutes.fetch(:name)
    @birthdate = attribrutes.fetch(:birthdate)
  end
end
