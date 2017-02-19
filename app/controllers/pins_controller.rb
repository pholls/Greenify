class PinsController < ApplicationController

  def index
    @pins = Pin.all
  end
 
  def show
    @pin = Pin.find(params[:id])
  end

  def new
    if current_user
      @pin = Pin.new
      @pin.lat = params[:latitude]
      @pin.lng = params[:longitude]
      render 'new'
    else
      redirect_to root_path, notice: 'You have to be logged it to do that!!'
    end
  end

  def create
    if current_user
      @pin = Pin.new(pin_params)
      if @pin.save
        redirect_to root_path
      else
        redirect_to new_pin_path, notice: 'Pin was not created!'
      end
    else
      redirect_to root_path, notice: 'You have to be logged it to do that!!'
    end
  end

  private

   def pin_params
     params.require(:pin).permit(:user_id, :description, :category, :lat, :lng)
   end

end
