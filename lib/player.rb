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

  define_method(:has_card?) do |card|
    @player_hand.include?(card)

  end
end
