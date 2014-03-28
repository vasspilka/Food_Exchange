# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :claim do
    user nil
    donation nil
    suggested_address "MyString"
    suggested_time "2014-03-28 20:45:46"
    latitude 1.5
    longitude 1.5
  end
end
