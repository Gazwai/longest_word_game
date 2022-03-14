class GamesController < ApplicationController
  # 1. Make a array of vowels
  VOWELS = %w(A E I O U)

  def new
    # 2. Make a isntance variable containing the vowels
    @letters = Array.new(4) { VOWELS.sample }
    # 3. Increment an addition array of 6 letter that are not vowels.
    @letters += Array.new(6) { (('A'..'Z').to_a - VOWELS).sample }
    @letters.shuffle!
  end

  def score
  end
end
