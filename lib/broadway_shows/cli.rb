class BroadwayShows::CLI

  def call
    puts "Welcome!"
    #calling BroadwayShows::Scraper.create_shows just to test
    BroadwayShows::Show.create_shows
    self.list_shows
    self.menu
  end

  def list_shows
    puts "The following is a list of broadway shows that are currently popular."

    @all_shows = BroadwayShows::Show.all
    @all_shows.each.with_index(1) do |show, i|
      puts "#{i}. #{show.name}"
    end
  end

  def menu
    puts "Enter the number corresponding to the show you would like more info on."
    puts "Enter list if you would like to see the list of shows again."
    puts "Enter exit if you would like to exit."

    input = nil
    while input != "exit"
      input = gets.strip.downcase
      if input.to_i > 0 && input.to_i <= @all_shows.count
        numbered_input = @all_shows[input.to_i - 1]
        puts numbered_input.name
        puts "Theatre: #{numbered_input.theatre}"
        puts "Run-time: #{numbered_input.duration}"
        puts "Description:"
        puts numbered_input.story


      elsif input == "list"
        self.list_shows
        puts "Enter the number corresponding to the show you would like more info on."
        puts "Enter exit if you would like to exit."
      elsif input == "exit"
        puts "Goodbye~!"
      else
        puts "Sorry, I don't understand..."
        puts "Enter the number corresponding to the show you would like more info on."
        puts "Enter list if you would like to see the list of shows again."
        puts "Enter exit if you would like to exit."
      end
    end
  end

end
