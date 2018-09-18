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
    BroadwayShows::Scraper.scrape_shows_index.each do |show|
      self.new(name: show.text, url: show.attributes["href"].value)
    end
    self.all
  end


end
