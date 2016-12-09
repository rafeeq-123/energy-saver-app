class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
  has_many :savers   

  def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        if user.email.empty?
           user.email = auth.info.email   
        else
           user.email   
        user.oauth_token = auth.credentials.token
        user.password = Devise.friendly_token[0,20]
    end
    @facebook = Koala::Facebook::API.new(auth.credentials.token)
    end
  end  

  # def facebook
  #   @facebook ||= Koala::Facebook::API.new(oauth_token)
  # end  
end

