require("rspec")
require("pg")
require("doctor")
require("patient")
require('pry')

DB = PG.connect({:dbname => "hospital_test"})

RSpec.configure do |config|
  config.before(:each) do
    DB.exec("DELETE FROM doctors *;")
    DB.exec("DELETE FROM patients *;")
  end
end
