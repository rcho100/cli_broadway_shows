class BroadwayShows::Show
  attr_accessor :name, :story, :theatre, :duration

  def self.all
    self.scrape_shows
  end

  # def self.scrape_shows
  #
  #   # show_1 = self.new
  #   # show_1.name = "Hamilton"
  #   # show_1.story = [
  #   #                  "Hamilton is the story of the unlikely Founding Father determined to make his mark on the new nation as hungry and ambitious as he is.",
  #   #                  "From bastard orphan to Washington's right-hand man, rebel to war hero, a loving husband caught in the country's first sex scandal,",
  #   #                  "to the Treasury head who made an untrusting world believe in the American economy. George Washington, Eliza Hamilton, Thomas Jefferson",
  #   #                  "and Hamilton's lifelong friend/foil Aaron Burr all make their mark in this astonishing new musical exploration of a political mastermind."
  #   #                ]
  #   #
  #   # show_1.theatre = "Richard Rodgers Theatre"
  #   # show_1.duration = "2hrs, 55mins"
  #   #
  #   # show_2 = self.new
  #   # show_2.name = "The Lion King"
  #   # show_2.story = [
  #   #   "A lively stage adaptation of the Academy Award-winning 1994 Disney film, The Lion King is the story of a young lion prince living in the",
  #   #  "flourishing African Pride Lands. Born into the royal family, precocious cub Simba spends his days exploring the sprawling savanna grasslands",
  #   #  "and idolizing his kingly father, Mufasa, while youthfully shirking the responsibility his position in life requires. When an unthinkable tragedy,",
  #   #  "orchestrated by Simba’s wicked uncle, Scar, takes his father’s life, Simba flees the Pride Lands, leaving his loss and the life he knew behind.",
  #   #  "Eventually companioned by two hilarious and unlikely friends, Simba starts anew. But when weight of responsibility and a desperate plea from the now",
  #   #  "ravaged Pride Lands come to find the adult prince, Simba must take on a formidable enemy, and fulfill his destiny to be king. A vibrant and exciting",
  #   #  "tale from the great creatives at Disney, The Lion King is a story of love and redemption that nobody should miss."
  #   #                ]
  #   #
  #   # show_2.theatre = "Minskoff Theatre"
  #   # show_2.duration = "2hrs, 30mins"
  #   #
  #   # [show_1, show_2]
  # end
end
