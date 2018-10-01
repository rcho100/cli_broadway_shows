class BroadwayShows::Show
  attr_accessor :name, :story, :theatre, :duration, :url

  @@all = []

  def initialize(name:, url:)
    @name = name
    @url = "https://www.broadway.org" + url
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create_shows
    shows = BroadwayShows::Scraper.scrape_shows_index
    shows.each do |show|
      self.new(name: show.text, url: show.attributes["href"].value)
    end
  end

  def get_details
    BroadwayShows::Scraper.scrape_details(self) if self.story == nil 
  end
end
