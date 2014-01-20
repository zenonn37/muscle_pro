class RegistrationsController  < Devise::RegistrationsController
  


  protected

  def after_sign_up_path_for(resource)
  	dashboards_index_path
  	
  end


end
