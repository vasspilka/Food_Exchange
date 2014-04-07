class Donation < ActiveRecord::Base
  belongs_to :donator, class_name: "User"
  belongs_to :receiver, class_name: "User"

  has_many :claims
  has_many :vindicators, through: :claims, source: :user

  geocoded_by :exchange_address  
  after_validation :geocode 

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "01.png"
  validates_attachment :image,
  :content_type => { :content_type => ["image/jpeg","image/jpg", "image/gif", "image/png"] }


  validates :title, :donator_id, presence: true


end
