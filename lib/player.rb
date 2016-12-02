require('./lib/game')

class Player
  @@players = []
  attr_reader(:player_hand, :id)

  define_method(:initialize) do
    @player_hand = []
    @id = @@players.length() + 1
  end

  define_method(:get_hand) do |hand|
    @player_hand = hand
  end

  define_method(:save) do
   @@players.push(self)
  end

  # For testing purposes
  define_method(:set_hand) do |hand|
    @player_hand = hand
  end

  define_method(:has_card?) do |value|
    had_card = []
    i = 0
    @player_hand.each() do |index|
     if index.include?(value)
       print "i: ", i
       had_card.push(@player_hand.slice!(i)) # returns card lost
     end
     i += 1
   end
   puts "had_card: ", had_card
end

end

test_game = Game.new()
test_player = Player.new()
test_player.set_hand(['Ace of Spades', '2 of Hearts', 'King of Dimonds', 'Ace of Diamonds'])
puts test_player.has_card?('Ace')
