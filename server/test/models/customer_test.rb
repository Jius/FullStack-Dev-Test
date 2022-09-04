require "test_helper"
require "faker"

class CustomerTest < ActiveSupport::TestCase
  test "Should not save without informations" do
    customer = Customer.new
    assert_not customer.save
  end

  test "Should save with correct informations" do
    customer = Customer.new(name: Faker::Name.name, email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone_in_e164)
    assert customer.save
  end

  test "Should not save with incorrect email" do
    customer = Customer.new(name: Faker::Name.name, email: 'bad@email', phone: Faker::PhoneNumber.cell_phone_in_e164)
    assert_not customer.save
  end

  test "Should not save without name" do
    customer = Customer.new(email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone_in_e164)
    assert_not customer.save
  end

  test "Should not save without email" do
    customer = Customer.new(name: Faker::Name.name, phone: Faker::PhoneNumber.cell_phone_in_e164)
    assert_not customer.save
  end

  test "Should not save without phone" do
    customer = Customer.new(name: Faker::Name.name, email: Faker::Internet.email )
    assert_not customer.save
  end
end