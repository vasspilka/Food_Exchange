class User < ActiveRecord::Base

  attr_accessor :login

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :trackable,
         :validatable, :omniauthable, :omniauth_providers => [:facebook], :authentication_keys => [:login]

  has_many :donations, foreign_key: "donator_id", dependent: :destroy
  has_many :claimed_donations, foreign_key: "receiver_id" , class_name: "Donation"
  has_many :claims

  validates :username,:presence => true,
  :uniqueness => {:case_sensitive => false}

  def claim!(donation)
  	claims.create!(donation_id: donation.id) end	

  def claimed?(donation)
    claims.find_by(donation_id: donation.id) end
  
  def created?(donation)
  	donations.find(donation.id) end








  # Facebook login using omniauth
  def self.from_omniauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    unless user
      user = User.create(
        provider: auth.provider,
        uid: auth.uid,
        username: auth.extra.raw_info.username,
        name: auth.extra.raw_info.name,
        email: auth.info.email,
        address: auth.info.location,
        gravatar: auth.info.image,
        password: Devise.friendly_token[0,20]
        )
    end
    user
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.provider = data["provider"] if user.provider.blank?
        user.uid = data["uid"] if user.uid.blank?
        user.username = data["username"] if user.username.blank?
        user.email = data["email"] if user.email.blank?
        user.address = data["address"] if user.address.blank?
        user.name = data["name"] if user.name.blank?
        user.surname = data["name"] if user.surname.blank?
        user.gravatar = data["image"] if user.gravatar.blank?
      end
    end
  end


  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
       where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
     else
       where(conditions).first
    end
  end

end
