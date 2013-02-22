class ImagesController < ApplicationController
  # GET /images
  # GET /images.
  before_filter :load_albumn
  def index
    @images = @albumn.images

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @images }
    end
  end

  # GET /images/1
  # GET /images/1.json
  def show
    @image = @albumn.images.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @image }
    end
  end

  # GET /images/new
  # GET /images/new.json
  def new
    @image = @albumn.images.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @image }
    end
  end

  # GET /images/1/edit
  def edit
    @image = @albumn.images.find(params[:id])
  end

  # POST /images
  # POST /images.json
  def create
    @image = @albumn.images.new(params[:image])
    respond_to do |format|
      if @image.save
        format.html { redirect_to albumn_images_path, notice: 'Image was successfully created.' }
        format.json { render json: albumn_image_path, status: :created, location: @image }
      else
        format.html { render action: "new" }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /images/1
  # PUT /images/1.json
  def update
    @image = @albumn.images.find(params[:id])

    respond_to do |format|
      if @image.update_attributes(params[:image])
        format.html { redirect_to albumn_images_path, notice: 'Image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    #binding.pry
    @image = @albumn.images.find(params[:id])
    @image.destroy

    respond_to do |format|
      format.html { redirect_to albumn_images_path }
      format.json { head :no_content }
    end
  end

  def load_albumn
    @albumn=Albumn.find(params[:albumn_id])
  end
end
