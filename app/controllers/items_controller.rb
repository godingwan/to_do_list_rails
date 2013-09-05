class ItemsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @items = current_user.items.all
  end

  def new
    @item = current_user.items.new
  end

  def create
    @item = current_user.items.new(params[:item])

    if @item.save
      flash[:notice] = "Item created successfully."
      redirect_to user_items_path(current_user)
    else
      flash[:alert] = "Failed to create item."
      render action: "new"
    end
  end
end
