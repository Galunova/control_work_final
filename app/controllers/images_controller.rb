class ImagesController < ApplicationController

	before_action :authenticate_user!, only: [:destroy]
	before_action :set_image, only: [:show, :destroy, :owned_post]
	before_action :owned_photo, only: [:destroy]
	
	def index
	  @images = Image.all.order('created_at DESC')
	end

	def new
	  @image = current_user.images.build
	end
	
	def create
	  @image = current_user.images.build(images_params)
	  if @image.save
	    flash[:success] = "Your post has been created!"
	    redirect_to images_path
	  else
	    flash[:alert] = "Your new post couldn't be created!  Please check the form."
	    render :new
	  end
	end
	
	def show
	end
	
	def destroy
	  @image.destroy
	  redirect_to images_path
	end

	private

	def images_params
	  params.require(:image).permit(:image)
	end

	def set_image
	  @image = Image.find(params[:id])
	end

	def owned_image
		unless current_user == @image.user
	  flash[:alert] = "That post doesn't belong to you!"
	  redirect_to root_path
  end
end
