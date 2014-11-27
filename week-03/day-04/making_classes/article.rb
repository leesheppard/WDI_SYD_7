class Article
  attr_accessor :title, :content, :author

  def initialize(attr)
    self.quick_update(attr)
  end

  def quick_update(attr)
    self.title = attr[:title]
    self.content = attr[:content]
    self.author = attr[:author]
  end
end

welcome_article = Article.new({
  title: "Welcome to my blog's",
  content: "Hi everybody",
  author: "FluffyJack"
})
welcome_article.slug #=> "welcome-to-my-blog"
welcome_article.quick_update({
  title: "Welcome to my blog's",
  content: "Hi everybody",
  author: "FluffyJack"
})
welcome_article.slug #=> "hello-from-jack"