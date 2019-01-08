class RoomItemsController < ApplicationController
    skip_before_action :authenticate_user!

  def new
    @room = current_user.rooms.build
    @room_item = @room.room_items.build
  end

  def create

    if @room_item.save
      flash[:success] = "New room item created."
    end
  end

  def index
  end

  private

  def room_item_params
    params.require(:room_item).permit(:name)
  end

end
