require 'rails_helper'

RSpec.describe Post, :type => :model do
  it "counts the number of comments" do
    post = Post.create(title: "Welcome to my blog", content: "Lorem ipsum")
    post.comments.create(content: "Lorem ispum")
    post.comments.create(content: "Lorem ispum")

    expect(post.count_comments).to eq(2)
  end
end
