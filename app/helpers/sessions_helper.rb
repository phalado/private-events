module SessionsHelper

    def signed?
    user_id = session[:user_id]
    @current_user = User.find_by(id: user_id)
    end
end
