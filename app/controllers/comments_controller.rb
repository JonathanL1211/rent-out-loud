class CommentsController < ApplicationController
#ArticlesController is inheriting from a special class called ApplicationController
  def index
    @product = Product.find(params[:product_id])
    @comments = Comment.where(product_id: @product.id)
  end

  def show

  end

  def new
  end

  def edit
  end

  def create
    @product = Product.find(params[:product_id])
    @comment = Comment.new(comments_params)
    @comment.save
    if @comment.save
      redirect_to product_comments_path(@product)
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private
  def comments_params
    params.require(:comment).permit(:contents, :user_id, :product_id)
  end
end