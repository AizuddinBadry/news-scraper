class PostCrawler < Kimurai::Base
  @name = 'post_crawler'
  @engine = :mechanize

  def self.process(url)
    @start_urls = [url]
    self.crawl!
  end

  def parse(response, url:, data: {})
    
  end
end