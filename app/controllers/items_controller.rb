class ItemsController < ApplicationController
	before_action :find_item, only: [:show, :edit, :update, :destroy]

	def index
	  @items = Item.all.order("price DESC")
	end

	def show
	end

	def new
	  @item = current_user.items.build
		@categories = Category.all.map{ |c| [c.name, c.id] }
	end

	def create
	  @item = current_user.items.build(item_params)
		@item.category_id = params[:category_id]

	  if @item.save
	  	redirect_to root_path
	  else
	  	render 'new'
	  end
	end

	def edit
		@categories = Category.all.map{ |c| [c.name, c.id] }
	end

	def update
	@item.category_id = params[:category_id]
		if @item.update(item_params)
			redirect_to item_path(@item)

		end
	end

	def destroy
		@item.destroy
		redirect_to root_path
	end

	private

	def item_params
	  params.require(:item).permit(:title, :description, :price, :category_id)
	end

	def find_item
		@item = Item.find(params[:id])
	end
end
