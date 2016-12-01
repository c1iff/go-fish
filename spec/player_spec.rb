require('rspec')
require('player')
require('game')

describe(Player) do

  describe('#get_hand') do
    it('Returns the current hand for the player') do
      test_game = Game.new()
      test_player = Player.new()
      test_player.save()
      expect((test_player.get_hand(test_game.deal()).length)).to(eq(7))
    end
  end

end
