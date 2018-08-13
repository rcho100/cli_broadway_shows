class BroadwayShows::CLI

  def call
    puts "Welcome!"
    self.list_shows
    self.menu
  end

  def list_shows
    puts "The following is a list of broadway shows that are currently popular."

    @all_shows = BroadwayShows::Show.all
  end

  def menu
    puts "Enter the number corresponding to the show you would like more info on."
    puts "Enter list if you would like to see the list of shows again."
    puts "Enter exit if you would like to exit."

    input = nil
    while input != "exit"
      input = gets.strip.downcase
      if input == "list"
        self.list_shows
        puts "Enter the number corresponding to the show you would like more info on."
        puts "Enter list if you would like to see the list of shows again."
        puts "Enter exit if you would like to exit."
      elsif input == "1"
        puts "More info on The Lion King"
      elsif input == "2"
        puts "More info on Chicago"
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
