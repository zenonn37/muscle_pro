class Trainer < ActiveRecord::Base

	has_one  :bio
	has_one  :staff_account
	has_many :tclasses


	 def fullName

   	"#{first_name} #{last_name}"
   end
end
