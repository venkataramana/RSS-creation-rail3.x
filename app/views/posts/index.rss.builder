xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Kvramana rss_blog"
    xml.description "Love India. Don't love girls in India"
    #xml.link posts_url

    @posts.each do |post|
      xml.item do
        xml.title post.title
        xml.description post.description
        xml.pubDate post.created_at.to_s(:rfc822)
        xml.link post_url(post)
        xml.guid post_url(post)
      end
    end
  end
end

