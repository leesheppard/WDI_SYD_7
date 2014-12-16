require 'rails_helper'

feature "ReaderListsPosts", :type => :feature do
  scenario "there is no blog posts" do
    visit '/'
    expect(page).to have_content("No blog posts found")
  end

  scenario "one blog post" do
    Post.create(
      title: "Hello World",
      author: "Jane Birkin",
      content: "Lorem ipsum dolar sit amet"
    )
    
    visit '/'

    expect(page).to have_content("Hello World")
    expect(page).to have_content("Jane Birkin")
    expect(page).to have_content("Lorem ipsum dolar sit amet")
    expect(page).not_to have_content("No blog posts found")
  end

  scenario "multiple blog posts in system" do
    (0..3).each do |n|
      Post.create(
        title: "Hello World #{n}",
        author: "Jane Doe #{n}",
        content: "Lorem ipsum #{n} dolar sit amet"
      )
    end

    visit '/'

    (0..3).each do |n|
      expect(page).to have_content("Hello World #{n}")
      expect(page).to have_content("Jane Doe #{n}")
      expect(page).to have_content("Lorem ipsum #{n} dolar sit amet")
    end

    expect(page).not_to have_content("No blog posts found")
  end
end








