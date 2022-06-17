module CommentHelper
    def get_photo_from_comment_owner(comment_id)
        comment = Comment.find(comment_id)
        comment.user.photo
    end
end