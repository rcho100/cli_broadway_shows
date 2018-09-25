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
    self.all
  end

  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end

  def get_details
    self.story ||= doc.css("div.col-lg-12.col-md-12.black-text").text.strip
    self.theatre ||= doc.css("div.col-lg-6.col-md-9 p").text.split("\n")[0].strip
    self.duration ||= doc.css("div.col-lg-6.col-md-6 p").text.split[15..20].join(" ")
  end
end
