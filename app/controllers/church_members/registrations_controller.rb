class ChurchMembers::RegistrationsController < Devise::RegistrationsController
  
  protected

    def after_update_path_for(resource)
      "/church_members/edit"
    end

end