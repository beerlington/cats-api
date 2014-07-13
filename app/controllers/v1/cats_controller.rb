class V1::CatsController < ApplicationController
  def index
    render json: Cat.all
  end

  def create
    cat = Cat.new(create_params)

    if cat.save
      render json: cat
    else
      head :unprocessable_entity
    end
  end

  private

  def create_params
    params.require(:cat).permit(:name, :cloudinary_public_id)
  end
end
