module CommentsHelper

  #Display the comments or an empty comment message
  def comments_display(_comments)
    html = content_tag(:div,
    _comments.blank? ? "<h3>No comments currently available</h3>" : render(:partial => _comments),
    :class => "comments")
  end

  def new_comment_link
    link_to 'Create a new comment', new_comment_path(),:class => "get"
  end
end

