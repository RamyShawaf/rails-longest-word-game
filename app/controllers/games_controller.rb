require OpenURI

class GamesController < ApplicationController
  def new
    @letters = ["Y", "Z", "D", "U", "Q", "E", "Z", "Y", "Q", "I"]
  end

  def score
    @letters = ["Y", "Z", "D", "U", "Q", "E", "Z", "Y", "Q", "I"]
    i = 0
    params[:word].upcase.chars.each do |letter|
      i +=1 if params[:word].upcase.chars.count(letter) <= @letters.count(letter)
    end

    if i == params[:word].length
      @word = "Congratulations! #{params[:word].upcase} is a valid English word!"
    else
      @word = "Sorry but #{params[:word].upcase} can't be built out of #{@letters.join(",")}"
    end

  end
end
