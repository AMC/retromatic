def RoomReactionsController < ApplicationController
  before_action :set_room

  def create
    @room.increment! :likes
    redirect_to @room
  end

  private

  def set_room
    @room = Room.find(params[:room_id])
  end
end