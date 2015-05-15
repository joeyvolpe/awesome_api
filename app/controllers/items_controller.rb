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
      redirect_to user_path(@user), notice: "Item was successfully created!"
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @user = User.find(@item.user_id)
    @item.update_attributes(item_params)

    if @item.update_attributes(item_params)
      redirect_to user_path(@user), notice: 'Item was successfully updated.' 
    else
      render :edit
    end

  end

  def destroy
    @item = Item.find(params[:id])
    @trades = Trade.where("item_id = #{@item.id} OR item_a_id = #{@item.id}")
    @trades.destroy_all
    @item.destroy
    redirect_to user_path(@item.user_id), notice: 'Item was successfully deleted.' 
  end

  def item_params
    params.require(:item).permit(:item_image, :item_name, :item_description)
  end
end
