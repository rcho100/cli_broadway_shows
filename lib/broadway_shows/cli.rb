class BroadwayShows::CLI

  def call
    puts "Welcome!"
    list_shows
    menu
  end

  def list_shows
    puts "The following is a list of broadway shows that are currently popular."
    puts "1. The Lion King"
    puts "2. Chicago"
  end

  def menu
    puts "Enter the number corresponding to the show you would like more info on."
    puts "Enter list if you would like to see the list of shows again."
    puts "Enter exit if you would like to exit."
  end

end
