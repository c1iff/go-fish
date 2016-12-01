require('rspec')
require('game')

describe(Game) do

  describe('#create_deck') do
    it('creates a shuffled deck array') do
      test_game = Game.new()
      expect(test_game.game_deck().class).to(eq(Array))
    end
  end

  describe('#deal') do
    it('deals 7 cars to player') do
      test_game = Game.new()
      test_game.deal()
      expect(test_game.game_deck.length).to(eq(45))
    end
  end

end
