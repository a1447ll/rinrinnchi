class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @category = Category.find(params[:category_id])
    @item = @category.items.find(params[:id])
  end

  def new
    @category = Category.find(params[:category_id])
    @item = @category.items.new
  end

  def create
    @category = Category.find(params[:category_id])
    @item = @category.items.new(item_params)
    if @item.save
      redirect_to category_path(@category)
    else
      render 'new'
    end
  end

  def destroy
    @category = Category.find(params[:category_id])
    @item = @category.items.find(params[:id])
    @item.destroy
  end

  def item_params
    params.require(:item).permit(:name, :image, :description, :price)
  end
end
