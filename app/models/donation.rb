class Donation < ActiveRecord::Base
  belongs_to :donator, class_name: "User"
  belongs_to :receiver, class_name: "User"
  has_many :items

  geocoded_by :exchange_address  
  after_validation :geocode 

  accepts_nested_attributes_for :items, allow_destroy: true

  validates :title, :donator_id, presence: true

end
