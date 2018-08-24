class BroadwayShows::Scraper

  def self.get_page
    Nokogiri::HTML(open("https://www.broadway.org/shows/index/currently_playing,-1,0,"))
  end

  def self.scrape_shows_index
    shows = []
    self.get_page.css("a.color-white.bold").text
    shows
  end

  def create_shows

  end
end
