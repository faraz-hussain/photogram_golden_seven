class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id]})
  end

  def new_form

  end

  def create_row
    @photo = Photo.new
    @photo.caption = params[:caption]
    @photo.source = params[:source]
    @photo.save

    #render("create_row.html.erb")
    redirect_to("http://localhost:3000/photos")
  end

  def destroy
    @photo = Photo.find(params[:id])

    @photo.destroy

    redirect_to "/photos", :notice => "Photo deleted."
  end

  def edit
    @photo = Photo.find_by({ :id => params[:id]})

    @photo.caption = params[:caption]
    @photo.source = params[:source]

  end

  def update
    @photo = Photo.find_by({ :id => params[:id]})

    @photo.caption = params[:caption]
    @photo.source = params[:source]

    if @photo.save
      redirect_to "/photos/#{params[:id]}", :notice => "Photo updated successfully."
    else
      render 'edit'
    end
  end


end
