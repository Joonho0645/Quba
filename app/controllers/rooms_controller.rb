class RoomsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    @room.update(room_params)
    if @room.save
      redirect_to room_path(@room)
    else
      render :edit
    end
  end

  def destroy
     @room = Room.find(params[:id])
     @room.destroy
     redirect_to rooms_path
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to room_path(@room)
    else
      render :new
    end
  end

  def room_params
    params.require(:room).permit(:title, :description)
  end
end
