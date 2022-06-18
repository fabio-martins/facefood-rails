module PostHelper
    def get_photo_from_post_owner(post_id)
        post = Post.find(post_id)
        post.user.photo
    end
end