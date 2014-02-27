require 'factory_girl'

FactoryGirl.define do
  factory :user do
    first_name 'Testy'
    last_name 'Testesciles'
    email 'testy@test.com'
    password 'password'
    phone '303-303-3030'
    address '666 Hell Ave Denver, CO 80666'
  end
end