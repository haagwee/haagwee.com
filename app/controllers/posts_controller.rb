class PostsController < ApplicationController
  require "rss"
  require "open-uri"

  def index
    Analytics.page(
      user_id: "anonymous_id",
      name: 'Posts'
    )
    @posts = medium_news
  end

  private

  def medium_news
    rss = RSS::Parser.parse(open("https://medium.com/feed/@haagwee/").read, false).items[0..6]
    rss.map { |article|
      {
        title: article.title,
        date: article.pubDate,
        link: article.link,
        description: article.description,
        creator: article.dc_creator
      }
    }
  end
end
