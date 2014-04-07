class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :donations, foreign_key: "donator_id"
  has_many :claimed_donations, foreign_key: "receiver_id" , class_name: "Donation"
  has_many :claims


  def claim!(donation)
  	claims.create!(donation_id: donation.id) end	

  def claimed?(donation)
    claims.find_by(donation_id: donation.id) end
  
  def created?(donation)
  	donations.find(donation.id) end

end
