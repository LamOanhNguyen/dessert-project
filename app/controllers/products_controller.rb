class ProductsController < ApplicationController
  before_action :load_product, only: :show
  before_action :get_price_params, only: :index

  def index
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
    @products = @products.paginate(page: params[:page],
      per_page: Settings.paginate.product_show)
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

    if logged_in?
      @rating = Rating.find_by product_id: params[:id], user_id: current_user.id
    end
  end

  private
  def load_product
    @product = Product.find_by id: params[:id]
    unless @product
      flash[:danger] = t "error.product_not_found"
      redirect_to root_url
    end
  end

  def get_price_params
    price_str = params[:price]
    @max_price = price_str.split(",").last if price_str.present?
    @min_price = price_str.split(",").first if price_str.present?
  end  

  def comments
    @comments ||= Comment.all
  end
end
