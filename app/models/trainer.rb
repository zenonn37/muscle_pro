class Trainer < ActiveRecord::Base

	has_one :bio

	 def fullName

   	"#{first_name} #{last_name}"
   end
end
