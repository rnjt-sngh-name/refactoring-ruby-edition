class Refactoring::Chapter6ComposingMethods::Item
  def initialize(quantity, price)
    @quantity = quantity
    @price    = price
  end

  def price
    base_price * discount_factor
  end

  def market_price
    base_price - quantity_discount + shipping
  end

  def shipping
    [base_price * 0.1, 100.0].min
  end

  def quantity_discount
    [0, @quantity - 500].max * @price * 0.05
  end

  def discount_factor
    (base_price > 1000) ? 0.95 : 0.98
  end

  def base_price
    @quantity * @price
  end
end