class Admin::ProductsController < ApplicationController
  before_action :logged_in_user
  before_action :admin_user
  before_action :load_product, only: [:edit, :update, :destroy, :show]
  before_action :get_price_params, only: :index
  before_action :load_all_product, only: :index

  def index
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params
    if @product.save
      flash[:success] = t "success.create_product"
      redirect_to @product
    else
      flash[:success] = t "error.create_product"
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update_attributes product_params
      flash[:success] = t "success.update"
      redirect_to [:admin, @product]
    else
      flash[:danger] = t "error.update_failed"
      redirect_to admin_products_path
    end
  end

  def show
    if Product.exists? params[:id]
      @product = Product.find(params[:id])
      @comment = @product.comments.new
      #@comments = @product.comments.paginate(page: params[:page],
      #  :per_page => Settings.paginate.comment_show)
      @comments = @product.comments.paginate(:page => params[:page],
        :per_page => Settings.paginate.comment_show)
        .order("comments.created_at desc")
    else
      redirect_to root_path
    end

    @rating = Rating.find_by product_id: params[:id], user_id: current_user.id
  end

  def destroy
    if @product.destroy
      redirect_to admin_products_path
      flash[:success] = t "success.delete"
    else
      redirect_to admin_products_path
      flash[:success] = t "error.delete"
    end
  end

  private

    def product_params
      params.require(:product).permit :name, :description, :price, :quantity,
        :image, :category_id, :classification_id
    end

    def load_product
      @product = Product.find_by id: params[:id]
      unless @product
        flash[:danger] = t "error.product_not_found"
        redirect_to admin_products_path
      end
    end

    def load_all_product
      @products = Product.by_category(params[:category])
        .by_classification(params[:classification])
        .by_name(params[:name])
        .by_min_price(@min_price)
        .by_max_price(@max_price)
      if params[:rate].present?
        @products = @products.select do |product|
          product.average_rate == params[:rate].to_i
        end
      end
      @products = @products.paginate page: params[:page],
        per_page: Settings.paginate.admin_products
    end

    def comments
      @comments ||= Comment.all
    end
end
