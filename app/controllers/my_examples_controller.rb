class MyExamplesController < ApplicationController
  def random_fortune
    array = [0, 1, 2]
    array = array.shuffle
    fortune = array[0]
    if fortune == 0
      render json: { fortune: "Uh oh..." }
    elsif fortune == 1
      render json: { fortune: "Keep on keeping on" }
    else
      render json: { fortune: "Look under your seat..." }
    end
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
end
