class RegistrationsController  < Devise::RegistrationsController
  def welcome
  end


  protected

  def after_sign_up_path_for(resource)
  	registrations_welcome_path
  	
  end
end
