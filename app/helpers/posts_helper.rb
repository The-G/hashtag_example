module PostsHelper
  def render_with_hashtags(body)
    body.gsub(/#\p{Word}+/){|word| link_to word, "/posts/hashtag/#{word.delete('#')}"}.html_safe
  end
end
