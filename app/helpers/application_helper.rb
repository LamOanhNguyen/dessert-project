module ApplicationHelper

  def group_category_select
    Category.all.map {|category| [category.name, category.id]}
  end

  def rate_select
    (Settings.min_rate..Settings.max_rate).map {|i| [pluralize(i, "star"), i]}
  end

  def order_status_select
    OrderStatus.all.map {|status| [status.name, status.id]}
  end

  def classification_select
    Classification.all.map {|classification| [classification.name, classification.id]}
  end
end
