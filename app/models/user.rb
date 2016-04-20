class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :cpf, presence: true
  validates :nome, presence: true, length: { maximum: 32 }
  validates :matricula, presence: true
  validates :telefone, presence: true, length: { maximum: 9 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 50 },
            format: { with: VALID_EMAIL_REGEX }
   has_secure_password
   validates :password, presence: true, length: { minimum: 6 }
end