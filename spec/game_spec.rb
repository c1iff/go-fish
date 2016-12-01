require('rspec')
require('game')

describe(Game) do

  describe('#create_deck') do
    it('creates a shuffled deck array') do
      test_game = Game.new()
      expect(test_game.game_deck().class).to(eq(Array))
    end
  end

end
