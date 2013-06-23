class AvertsController < ApplicationController
  # GET /averts
  # GET /averts.json
  def index
    @averts = Avert.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @averts }
    end
  end

  # GET /averts/1
  # GET /averts/1.json
  def show
    @avert = Avert.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @avert }
    end
  end

  # GET /averts/new
  # GET /averts/new.json
  def new
    @avert = Avert.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @avert }
    end
  end

  # GET /averts/1/edit
  def edit
    @avert = Avert.find(params[:id])
  end

  # POST /averts
  # POST /averts.json
  def create
    @avert = Avert.new(params[:avert])

    respond_to do |format|
      if @avert.save
        format.html { redirect_to @avert, notice: 'Avert was successfully created.' }
        format.json { render json: @avert, status: :created, location: @avert }
      else
        format.html { render action: "new" }
        format.json { render json: @avert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /averts/1
  # PUT /averts/1.json
  def update
    @avert = Avert.find(params[:id])

    respond_to do |format|
      if @avert.update_attributes(params[:avert])
        format.html { redirect_to @avert, notice: 'Avert was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @avert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /averts/1
  # DELETE /averts/1.json
  def destroy
    @avert = Avert.find(params[:id])
    @avert.destroy

    respond_to do |format|
      format.html { redirect_to averts_url }
      format.json { head :no_content }
    end
  end
end
