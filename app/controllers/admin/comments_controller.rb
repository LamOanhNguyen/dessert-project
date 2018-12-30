class Admin::CommentsController < ApplicationController
  before_action :logged_in_user
  before_action :admin_user

  def index
    product = Product.find(params[:product_id])
    @comments = Product.comments
  end

  def show
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
      flash[:success] = t "success.post_comment"
      redirect_to root_path
    else
      flash[:danger] = t "error.post_comment"
      redirect_to admin_product_path
    end
  end

  def destroy
    @comment = Comment.find(params[:product_id])
    if @comment.destroy
      redirect_to admin_product_path
      flash[:success] = t "success.delete_comment"
    else
      redirect_to admin_product_path
      flash[:success] = t "error.delete_comment"
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:content, :product_id, :user_id)
    end
end