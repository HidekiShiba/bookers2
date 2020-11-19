class Users::RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(resource)
    user_path(@user)
  end
end