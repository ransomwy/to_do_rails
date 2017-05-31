class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
    # SELECT * FROM todo WHERE id='params_id'
  end

  def new
    @todos = Todo.new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to posts_path
    else
      render  :new
    end
  end

  private

    def item_params
      params.require(:item).permit(:item, :notes)
    end



end
