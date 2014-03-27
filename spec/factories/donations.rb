# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :donation do
    title "MyString"
    donator nil
    receiver nil
    description "MyText"
    exchange_time "2014-03-27 17:36:43"
    exchange_address "MyString"
    latitude 1.5
    longitude 1.5
    received false
    valid_donation false
  end
end
