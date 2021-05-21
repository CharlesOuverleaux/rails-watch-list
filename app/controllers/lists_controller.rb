class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    @list.update(list_params)

    # no need for app/views/restaurants/update.html.erb
    redirect_to list_path(@list)
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end