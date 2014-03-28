class Claim < ActiveRecord::Base
  belongs_to :user
  belongs_to :donation

  geocoded_by :suggested_address
  after_validation :geocode 
end
