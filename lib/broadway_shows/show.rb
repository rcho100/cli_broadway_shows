class BroadwayShows::Show
  attr_accessor :name, :story, :theatre, :duration, :url

  @@all = []

  def initialize(name=nil, story=nil, theatre=nil, duration=nil, url=nil)
    @name = name
    @story = story
    @theatre = theatre
    @duration = duration
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create_shows
    name_array = BroadwayShows::Scraper.scrape_shows_index.map{|show| show.text}
    name_array.each{|show_name| self.new(show_name)}
    self.all
  end


end
