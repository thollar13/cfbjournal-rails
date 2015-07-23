class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.from_omniauth(request.env["omniauth.auth"])
    puts "USER IS HERE " @user
    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      if @user.valid?
        @user.save!
        sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      else
        session["devise.facebook_data"] = request.env["omniauth.auth"] and session[:registration_incomplete] = true
        redirect_to new_user_path
      end
    end
  end
end
