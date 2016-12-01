class Game
  attr_reader(:game_deck)

  define_method(:initialize) do
    @game_deck = create_deck()
  end

  define_method(:create_deck) do
    card_symbols = ['Hearts', 'Spades', 'Diamonds', 'Clubs']
    card_values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace']
    game_deck = []

    card_symbols.each() do |symbol|
      card_values.each() do |value|
        game_deck.push(value + " of " + symbol)
      end
    end
    shuffle_deck(game_deck)
  end

  define_method(:deal) do
    players_cards = @game_deck.take(7)
    7.times do
      @game_deck.shift()
    end
    players_cards
  end

  define_method(:shuffle_deck) do |deck|
    deck.shuffle!
  end

end
