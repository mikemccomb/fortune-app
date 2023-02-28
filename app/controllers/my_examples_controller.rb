class MyExamplesController < ApplicationController
  def random_fortune
    # array.sample will pull one at random
    array = ["Uh oh...", "Keep on keeping on", "Look under your seat..."]
    fortune = array.sample
    render json: { fortune: fortune }
  end

  def lotto
    array = (1..60).to_a.shuffle
    numbers = []
    index = 0
    while index < 6
      numbers << array[index]
      index += 1
    end
    render json: { lottery: numbers }
  end

  def pagecount
    count = 0
    count += 1
    render json: { views: count }
  end

  def beer_bottles
    render json: { text: "the lyrics for '99 bottles of beer on the wall'" }
  end
end
