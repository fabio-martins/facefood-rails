module HomepageHelper
    def get_photo_from_current_user
        user_id = session[:current_user]["id"]
        current_user = User.find(user_id)
        current_user.photo unless current_user.photo.nil?
    end
end
