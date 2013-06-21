class User < ActiveRecord::Base
  authenticates_with_sorcery!
  ROLES = ['admin', 'user']
  EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  attr_accessible :email, :password, :password_confirmation, :username

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_length_of :password, :minimum => 8, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_inclusion_of :role, in: ROLES, allow_nil: false
  validates_format_of :email, :with => EMAIL_FORMAT
  validates_presence_of :username

  before_create :setup_auth_token

  def admin?
    self.role == "admin"
  end

  private

  def setup_auth_token
    self.activation_token = SecureRandom.hex(16)
  end
end
