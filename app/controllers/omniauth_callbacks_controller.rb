class OmniauthCallbacksController < Devise::omniauthCallbacksController
    def facebook
        @user = User.find_for_oauth(request.env['omniauth.auth'])
        if @user.persisted?
            sing_in_and_reirect @user, event: :authentication
        end
    end
end