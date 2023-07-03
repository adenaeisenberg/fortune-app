class MyExamplesController < ApplicationController
  def initialize
    @fortunes = ["You will win a car", "Speeding ticket", "Pay raise at work"]
    @index = 99
    @index2 = 98
    @lyrics_1 = "Bottles of Beer on the Wall,"
    @lyrics_2 = "Bottles of Beer,"
    @lyrics_3 = "Take one down pass if around,"
  end

  def generate_fortune
    render json: { your_fortune: @fortunes.shuffle.first }
  end

  def generate_number
    render json: { number: random_number = rand(1..60) }
  end

  def decreasing_index
    while index > 1
      index -= 1
      index2 -= 1
    end
  end


  def beer_song
    while @index > 1
      @index -= 1
      @index2 -= 1
    end

      render json: {
               song: "#{@index} #{@lyrics_1} #{@index} #{@lyrics_2} #{@lyrics_3} #{@index2} #{@lyrics_1}.",
      }.90.times
    end
  
end
