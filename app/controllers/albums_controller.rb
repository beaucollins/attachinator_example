class AlbumsController < ApplicationController
  
  before_filter :find_album, :except => [:index, :new, :create]
  
  def index
    @albums = Album.find(:all)
  end
  
  def new
    @album = Album.new
  end
  
  def edit
  end
  
  def update
    respond_to do |wants|
      if @album.update_attributes(params[:album])
        wants.html { redirect_to edit_album_path(@album) }
      else
        wants.html { render :action => 'edit' }
      end
    end
  end
  
  protected
  
    def find_album
      @album = Album.find(params[:id])
    end
  
end
