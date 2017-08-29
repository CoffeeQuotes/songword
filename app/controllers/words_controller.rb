class WordsController < ApplicationController
  
  def index
  end
  
  def create
    @song = Song.find(params[:song_id])
    @word = @song.words.create(word_params)
    redirect_to song_path(@song)
  end

  def destroy
    @song = Song.find(params[:song_id])
    @word = @song.words.find(params[:id])
    @word.destroy
    redirect_to song_path(@song)
  end
  private
  def word_params
    params.require(:word).permit(:mot, :meaning, :origin, :word_speech, :example)
  end
end
