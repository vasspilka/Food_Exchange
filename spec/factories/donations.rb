# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :donation do
    donator nil
    receiver nil
    exchange_time "2014-03-27 15:33:50"
    exchange_address "MyString"
    latitude 1.5
    longitude 1.5
    received false
    valid false
  end
end
