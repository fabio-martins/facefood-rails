module HomepageHelper
    def get_photo_from_current_user
        current_user = session[:current_user]
        User.find(current_user["id"]).photo unless current_user.nil?
    end
end
