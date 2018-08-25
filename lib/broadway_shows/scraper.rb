class BroadwayShows::Scraper

  def self.get_page
    Nokogiri::HTML(open("https://www.broadway.org/shows/index/currently_playing,-1,0,"))
  end

  def self.scrape_shows_index
    self.get_page.css("a.color-white.bold")
  end

  def self.create_shows
    name_array = self.scrape_shows_index.map{|show| show.text}
    name_array.each{|show_name| BroadwayShows::Show.new(show_name)}
    BroadwayShows::Show.all
  end
end
