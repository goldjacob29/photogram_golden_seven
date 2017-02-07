class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @p = Photo.find_by({:id => params[:id]})
    render("/photos/show.html.erb")
  end

  def edit
    @p = Photo.find_by({:id => params[:id]})

    render("/photos/edit.html.erb")
  end

  def update_photo
    p = Photo.find_by({:id => params[:id]})
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save

    redirect_to("/photos/#{p.id}")

  end

  def new
    render("/photos/new.html.erb")
  end

  def create_row
    p = Photo.new
    p.caption=params[:the_caption]
    p.source=params[:the_source]
    p.save

    redirect_to("/photos")
  end

  def delete_row
    p = Photo.find_by({:id =>params[:id]})
    p.destroy
    redirect_to("/photos")
  end

end
