class AlbumnsController < ApplicationController
  # GET /albumns
  # GET /albumns.json
  def index
#
    @albumns = Albumn.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @albumns }
    end
  end

  # GET /albumns/1
  # GET /albumns/1.json
  def show
    @albumn = Albumn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @albumn }
    end
  end

  # GET /albumns/new
  # GET /albumns/new.json
  def new
    @albumn = Albumn.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @albumn }
    end
  end

  # GET /albumns/1/edit
  def edit
    @albumn = Albumn.find(params[:id])
  end

  # POST /albumns
  # POST /albumns.json
  def create
    @albumn = Albumn.new(params[:albumn])

    respond_to do |format|
      if @albumn.save
        format.html { redirect_to albumns_path, notice: 'Albumn was successfully created.' }
        format.json { render json: @albumn, status: :created, location: @albumn }
      else
        format.html { render action: "new" }
        format.json { render json: @albumn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /albumns/1
  # PUT /albumns/1.json
  def update
    @albumn = Albumn.find(params[:id])

    respond_to do |format|
      if @albumn.update_attributes(params[:albumn])
        format.html { redirect_to albumns_path, notice: 'Albumn was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @albumn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albumns/1
  # DELETE /albumns/1.json
  def destroy
    @albumn = Albumn.find(params[:id])
    @albumn.destroy

    respond_to do |format|
      format.html { redirect_to albumns_url }
      format.json { head :no_content }
    end
  end
end
