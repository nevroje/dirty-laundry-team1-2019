class User < ApplicationRecord
  after_initialize :set_default_role, if: :new_record?

  enum role: [:visitor, :subscriber]
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         :omniauthable, omniauth_providers: [:facebook]
  acts_as_booker

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
    end
  end

  def visitor?
    self.role == 'visitor'
  end

  def subscriber?
    self.role == 'subscriber'
  end

  private

  def set_default_role
    self.role ||= :visitor
  end
end

