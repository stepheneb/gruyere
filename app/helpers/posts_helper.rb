module PostsHelper
  def like_tag(post)
    # TODO: We should generate some dom_ids so that the etorki can 
    # dynamically create remote links to update the post rating... (?)
    "<div class='increase_rank_link' id='increase_rank_link_#{post.id}'>like this post</div>"
  end
end
