class EstablishmentsController < ApplicationController
  def new
    @establishment = Establishment.new
  end

  def create
    @establishment = Establishment.new(establishment_params)

    if @establishment.save
      redirect_to @establishment
    else
      render 'new'
    end
  end

  def edit
    @establishment = Establishment.find(params[:id])
  end

  def update
    @establishment = Establishment.find(params[:id])

    if @establishment.update(establishment_params)
      redirect_to @establishment
    else
      render 'edit'
    end
  end

  def destroy
    @establishment = Establishment.destroy(params[:id])
    redirect_to establishments_url
  end

  def index
    @establishments = Establishment.all
  end

  def show
    @establishment = Establishment.find(params[:id])
  end

  private

  def establishment_params
    params.require(:establishment).permit(:title, :description, :status, :image_id, :user_id, :category_id)
  end

end
