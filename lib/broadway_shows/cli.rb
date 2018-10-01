class BroadwayShows::CLI

  def call
    puts "Welcome!"
    BroadwayShows::Show.create_shows
    list_shows
    menu
  end

  def list_shows
    puts "The following is a list of broadway shows in NYC."

    BroadwayShows::Show.all.each.with_index(1) do |show, i|
      puts "#{i}. #{show.name}"
    end
  end

  def menu
    puts "Enter the number corresponding to the show you would like more info on."
    puts "Enter 'list' if you would like to see the list of shows again."
    puts "Enter 'exit' if you would like to exit."

    input = nil
    while input != "exit"
      input = gets.strip.downcase
      if input.to_i > 0 && input.to_i <= BroadwayShows::Show.all.count
        selected_show = BroadwayShows::Show.all[input.to_i - 1]
        puts selected_show.name
        selected_show.get_details
        puts "Theatre: #{selected_show.theatre}"
        if selected_show.duration.split[5] == "with"
          puts "Run-time: " + selected_show.duration + " 1 intermission"
        elsif selected_show.duration.split[5] == "intermission"
          puts "Run-time: #{selected_show.duration}"
        else
          puts "Run-time: No run-time information available at this time"
        end
        puts "Description:"
        puts selected_show.story
        puts ""
        puts "Enter the number corresponding to the show you would like more info on."
        puts "Enter 'list' if you would like to see the list of shows again."
        puts "Enter 'exit' if you would like to exit."


      elsif input == "list"
        list_shows
        puts "Enter the number corresponding to the show you would like more info on."
        puts "Enter 'exit' if you would like to exit."
      elsif input == "exit"
        puts "Goodbye~!"
      else
        puts "Sorry, I don't understand..."
        puts "Enter the number corresponding to the show you would like more info on."
        puts "Enter 'list' if you would like to see the list of shows again."
        puts "Enter 'exit' if you would like to exit."
      end
    end
  end
end
