class SongsController < ApplicationController
  
  def new 
    @song = Song.new
  end 
  
  def create 
    @song = Song.new(song_params)
    @song.save 
    redirect_to song_path(@song)
  end 
  
  def edit 
    @song = Song.find(params[:id])
  end 
  
  def update 
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to song_path(@song)
  end 
  
  def destroy
    @song = Song.find(params[:id])
    @song.destroy 
  end 
  
  def show 
    @song = Song.find(params[:id])
    # will need to display each song's genre and artist and link to respective genre and artist show pages 
  end 
  
  def index 
    @songs = Song.all 
  end 
  
  private 
  
  def song_params 
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end 
  
end
