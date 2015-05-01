class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @user = User.find(params[:id])
    @item = @user.items.new(item_params)
    if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item = Item.update_attributes(item_params)

  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to user_path(@item.user)
  end

  def item_params
    params.require(:item).permit(:item_image, :item_name, :item_description)
  end
end
