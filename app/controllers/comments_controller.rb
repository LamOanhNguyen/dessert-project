class CommentsController < ApplicationController
  #before_action :logged_in_user, only: [:index, :new, :show, :create, :destroy]


  def index
    product = Product.find(params[:product_id])
    @comments = Product.comments
  end

  def show
  	product = Product.find(params[:product_id])
  	@comment = product.comments.find(params[:id])
  end

  def new
  	product = Product.find(params[:product_id])
  	@comment = product.comments.find(params[:id])
  end

  def create
    product = Product.find(params[:product_id])
    @comment = product.comments.create(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      flash[:success] = t "error.posted_successful"
      redirect_to product
    else
      flash[:danger] = t "error.posted_fail"
      redirect_to product
    end
  end
  
  def destroy
    if @comment.destroy
      redirect_to root_path
      flash[:success] = t "success.delete"
    else
      redirect_to admin_product_path
      flash[:success] = t "error.delete"
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:content, :product_id, :user_id)
    end
end