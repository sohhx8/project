class ThotsController < ApplicationController
  # GET /thots
  # GET /thots.json
  def index
    @thots = Thot.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @thots }
    end
  end

  # GET /thots/1
  # GET /thots/1.json
  def show
    @thot = Thot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @thot }
    end
  end

  # GET /thots/new
  # GET /thots/new.json
  def new
    @thot = Thot.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @thot }
    end
  end

  # GET /thots/1/edit
  def edit
    @thot = Thot.find(params[:id])
  end

  # POST /thots
  # POST /thots.json
  def create
    @thot = Thot.new(params[:thot])

    respond_to do |format|
      if @thot.save
        format.html { redirect_to @thot, notice: 'Thot was successfully created.' }
        format.json { render json: @thot, status: :created, location: @thot }
      else
        format.html { render action: "new" }
        format.json { render json: @thot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /thots/1
  # PUT /thots/1.json
  def update
    @thot = Thot.find(params[:id])

    respond_to do |format|
      if @thot.update_attributes(params[:thot])
        format.html { redirect_to @thot, notice: 'Thot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @thot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thots/1
  # DELETE /thots/1.json
  def destroy
    @thot = Thot.find(params[:id])
    @thot.destroy

    respond_to do |format|
      format.html { redirect_to thots_url }
      format.json { head :no_content }
    end
  end
end
