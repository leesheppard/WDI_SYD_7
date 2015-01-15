class Post < ActiveRecord::Base
  has_many :comments

  def count_comments
    comments.count
  end
end
