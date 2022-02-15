class PostCrawler < Kimurai::Base
  @name = 'post_crawler'
  @engine = :selenium_chrome

  def self.process(url)
    @start_urls = [url]
    self.crawl!
  end

  def parse(response, url:, data: {})
    response = browser.current_response
    response.css('list-unstyled.news-feed-items.index-load-more-container').each do |post|
      browser.visit(url)
      puts browser.current_response.to_json
    end
  end
end