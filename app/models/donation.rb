class Donation < ActiveRecord::Base
  belongs_to :donator, class_name: "User"
  belongs_to :receiver, class_name: "User"
  has_many :items
end
