module Database
  class User
    def find_in_database
    end
  end

  class BlogPost
    def all

    end
  end

  class Application
    def find_all_blog_posts
      BlogPost.all
    end

    def email_blog_post_to_user
      Mailer::User.email_this_blog_post(BlogPost.new)
    end
  end
end

module Mailer
  class User
    def email_user
    end
  end
end

database_user = Database::User.new
database_user.find_in_database
database_user.email_user