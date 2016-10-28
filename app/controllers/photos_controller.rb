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
    p = Photo.new
    p.caption = params[:caption]
    p.source = params[:source]
    p.save

    #render("create_row.html.erb")
    redirect_to("http://localhost:3000/photos")
  end

  def destroy
    p = Photo.find(params[:id])

    p.destroy

    redirect_to "/photos", :notice => "Photo deleted."
  end

  def edit
    p = Photo.find_by({ :id => params[:id]})

    p.caption = params[:caption]
    p.source = params[:source]

  end

  def update
    p = Photo.find_by({ :id => params[:id]})

    p.caption = params[:caption]
    p.source = params[:source]

    if p.save
      redirect_to "/photos/#{params[:id]}", :notice => "Photo updated successfully."
    else
      render 'edit'
    end
  end


end
