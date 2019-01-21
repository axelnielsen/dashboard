# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
 
  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :profile_id)
  end


def sign_up_params
  devise_parameter_sanitizer.sanitize(:sign_up)
end


end
