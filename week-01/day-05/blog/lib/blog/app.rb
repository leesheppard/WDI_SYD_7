require_relative "blog_post"

module Blog
  class App
    def start
      BlogPost.new
    end
  end
end