class Login < ActiveRecord::Base
  validates_presence_of  :username,:email,:password,:conformpassword
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_length_of :username, maximum: 10
  validates_confirmation_of :password
  validates_acceptance_of :mobilenumber

  #validate inclusion defined specified attribute available or not
  validates_inclusion_of :username,in: ['honest','raj','veera','karthi','raja']
  #Validates that the value of the specified attribute is not in a particular enumerable object.
  validates_exclusion_of :password,in: %w( 1234567890 123 12345)

   #association tutorial


end
