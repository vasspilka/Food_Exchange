# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    donation nil
    title "MyString"
    details "MyString"
    type ""
    expiration_date "2014-03-27"
    image ""
  end
end
