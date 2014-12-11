class User < ActiveRecord::Base

	has_many :posts
	has_secure_password

	validates :email, email_format: { message: "This does not look like a valid email address" }  #Using gem 'validates_email_format_of'
	validates :password, length: { in: 6..20 }
	validates :first_name, length: { in: 2..15}
	validates :last_name, length: { in: 2..15}
	validates :username, format: { with: /\w/ }, uniqueness: true
end
