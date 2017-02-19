class PinsController < ApplicationController

  def index
    @pins = Pin.all
  end

  def new
    if current_user
      @pin = Pin.new
      @pin.lat = params[:latitude]
      @pin.lng = params[:longitude]
      respond_to do |format|
        format.html { render 'new' }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'You have to be logged it to do that!!' }
        format.js
      end
    end
  end


  def edit
    if current_user
    else
      redirect_to root_path, notice: 'You have to be logged it to do that!!'
    end
  end

  def create
    if current_user
      @pin = Pin.new(pin_params)
      respond_to do |format|
        if @pin.save
          format.js { render 'pintags/_form'}
        else
          format.html { redirect_to root_path, notice: 'Pin was not able to be created!'}
          format.js
        end
      end
    else
      redirect_to root_path, notice: 'You have to be logged it to do that!!'
    end
  end

  private
  def set_pin
     @pin = Pin.find(params[:id])
   end

   def pin_params
     params.require(:pin).permit(:user_id, :description, :category, :lat, :lng, :image)
   end


end
