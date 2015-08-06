class Game < ActiveRecord::Base
  attributes :outcome, :player_state, :computer_state, :score
  enum outcome: [:user_one, :user_two, :tie]

  def calc_winnner
  end
end
