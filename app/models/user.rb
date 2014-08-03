class User < ActiveRecord::Base

has_secure_password

VALID_SYMBOLS = "~`!@#$%^&*()_+-={}|[]:'./>?".freeze

#Passswords must be 7 to 64 characters, contain 1 capital letter, 1 symbol, and 1 number
validates :password, presence: true, 
					 length: {in: 7..64},
					 format: {with: /(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[#{Regexp::escape(VALID_SYMBOLS)}])/ , 
							  message: "Password must contain at least: 1 capital letter, 1 symbol (#{VALID_SYMBOLS}) , 1 number"}

#Make sure email field looks like an email					 
validates :email, presence: true,
				  format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }



end
