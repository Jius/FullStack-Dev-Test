require "test_helper"
require 'faker'

class CompanyTest < ActiveSupport::TestCase
  test "Should not save without informations" do
    company = Company.new
    assert_not company.save
  end

  test "Should save with a name and correct SIREN" do
    company = Company.new(name: Faker::Company.name, siren: Faker::Company.french_siren_number)
    assert company.save
  end

  test "Should not save with an incorrect SIREN (length inferior)" do
    company = Company.new(name: Faker::Company.name, siren: Faker::Number.number(digits: 8))
    assert_not company.save
  end

  test "Should not save with an incorrect SIREN (length superior)" do
    company = Company.new(name: Faker::Company.name, siren: Faker::Number.number(digits: 10))
    assert_not company.save
  end

  test "Should not save with an incorrect SIREN format" do
    company = Company.new(name: Faker::Company.name, siren: Faker::Alphanumeric.alphanumeric(number: 9, min_alpha: 3, min_numeric: 3))
    assert_not company.save
  end
end