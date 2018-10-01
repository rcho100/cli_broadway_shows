class BroadwayShows::Scraper

  def self.get_page
    Nokogiri::HTML(open("https://www.broadway.org/shows/index/currently_playing,-1,0,"))
  end

  def self.scrape_shows_index
    self.get_page.css("a.color-white.bold")
  end

  def self.scrape_details(show)
    doc = Nokogiri::HTML(open(show.url))
    show.story = doc.css("div.col-lg-12.col-md-12.black-text").text.strip
    show.theatre = doc.css("div.col-lg-6.col-md-9 p").text.split("\n")[0].strip
    show.duration = doc.css("div.col-lg-6.col-md-6 p").text.split[15..20].join(" ")
  end
end
