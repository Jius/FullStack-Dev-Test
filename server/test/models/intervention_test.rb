require "test_helper"
require "faker"

class InterventionTest < ActiveSupport::TestCase
  setup do
    @intervention = Intervention.new(
      company: Company.new(name: Faker::Company.name, siren: Faker::Company.french_siren_number),
      customer: Customer.new(name: Faker::Name.name, email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone_in_e164),
      started_at: Faker::Time.forward(days: 20, period: :morning),
      address: Faker::Address.street_address,
      zipcode: Faker::Address.zip_code,
      city: Faker::Address.city,
      total_panels: Faker::Number.between(from: 1, to: 50),
      type_panel: Faker::Number.between(from: 0, to: (Intervention.type_panels.length-1)),
      ref_panel: Faker::Number.number(digits: 6)
    )
  end

  test "Should not save without company" do
    @intervention.company = nil
    assert_not @intervention.save
  end

  test "Should not save without customer" do
    @intervention.customer = nil
    assert_not @intervention.save
  end

  test "Should not save with incorrect Panel Ref (not integer)" do
    @intervention.ref_panel = Faker::Alphanumeric.alphanumeric(number: 6, min_alpha: 3, min_numeric: 3)
    assert_not @intervention.save
  end

  test "Should not save with incorrect Panel Ref (length inferior)" do
    @intervention.ref_panel = Faker::Number.number(digits: 5)
    assert_not @intervention.save
  end

  test "Should not save with incorrect Panel Ref (length superior)" do
    @intervention.ref_panel = Faker::Number.number(digits: 7)
    assert_not @intervention.save
  end

  test "Should not save without Type Panel" do
    @intervention.type_panel = ''
    assert_not @intervention.save
  end

  test "Should not save without Address, Zip, City" do
    @intervention.address = ''
    @intervention.zipcode = ''
    @intervention.city = ''
    assert_not @intervention.save
  end
end