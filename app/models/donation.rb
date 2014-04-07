class Donation < ActiveRecord::Base
  # Relations
  belongs_to :donator, class_name: "User"
  belongs_to :receiver, class_name: "User"
  has_many :claims
  has_many :vindicators, through: :claims, source: :user
  
  # Geocoded
  geocoded_by :exchange_address  
  after_validation :geocode 

  # Scopes
  scope :pending,   -> { where(:received => false) }

  # Uploadable Image
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "01.png"
  validates_attachment :image, :content_type => { :content_type => ["image/jpeg","image/jpg", "image/gif", "image/png"] }

  # Validations
  validates :title, :donator_id, presence: true


end
