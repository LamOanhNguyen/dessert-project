class Admin::CategoriesController < ApplicationController
  before_action :logged_in_user
  before_action :load_category, only: [:show, :update, :destroy]
  
  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params
    if @category.save
      flash[:success] = t "success.create_product"
      redirect_to admin_categories_path
    else
      flash[:success] = t "error.create_product"
      render :new
    end
  end

  def update
    if @category.update_attributes category_params
      flash[:success] = t "success.update_category"
      redirect_to admin_categories_path
    else
      flash[:danger] = t "error.update_category"
      redirect_to admin_categories_path
    end
  end

  def destroy
    if @category.destroy
      flash[:success] = t "success.delete_category"
      redirect_to :back
    else
      flash[:danger] = t "error.delete_category"
      redirect_to :back
    end
  end

  private

    def load_category
      @category = Category.find_by id: params[:id]
      unless @category
        flash[:danger] = t "error.category_not_found"
        redirect_to :back
      end
    end

    def category_params
      params.require(:category).permit :name, :description
    end
end
