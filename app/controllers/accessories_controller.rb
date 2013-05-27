class AccessoriesController < ApplicationController
  # GET /accessories
  # GET /accessories.json
  def index
    unless params[:dollar_type].nil?
      @accessories = Accessory.find(:all, :conditions => {:dollar_type => params[:dollar_type]}, :order => 'created_at DESC', :limit => 1)
    else
      @accessories = Accessory.all
    end
  end

  # GET /accessories/1
  # GET /accessories/1.json
  def show
    @accessory = Accessory.find(params[:id])

  end

  # POST /accessories
  # POST /accessories.json
  def create
    @accessory = Accessory.new(params[:accessory])

    if @accessory.save
      render json: @accessory, status: :created, location: @accessory
    else
      render json: @accessory.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /accessories/1
  # PATCH/PUT /accessories/1.json
  def update
    @accessory = Accessory.find(params[:id])

    if @accessory.update_attributes(params[:accessory])
      head :no_content
    else
      render json: @accessory.errors, status: :unprocessable_entity
    end
  end

  # DELETE /accessories/1
  # DELETE /accessories/1.json
  def destroy
    @accessory = Accessory.find(params[:id])
    @accessory.destroy

    head :no_content
  end
end
