class Trainer < ActiveRecord::Base

	has_one :bio
	has_many :tclasses

	 def fullName

   	"#{first_name} #{last_name}"
   end
end
