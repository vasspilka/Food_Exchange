class Donation < ActiveRecord::Base
  geocoded_by :exchange_address  
  after_validation :geocode 
  
  belongs_to :donator, class_name: "User"
  belongs_to :receiver, class_name: "User"

  has_many :items

       
end
