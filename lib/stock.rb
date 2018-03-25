class Stock
  def initialize(number_of_cans)
    @cans = number_of_cans.to_i.times.map { stock_can }
  end

  def buy_in(number_of_cans)
    @cans.concat(number_of_cans.to_i.times.map { stock_can })
  end

  def will_out?(number_of_cans)
    @cans.count < number_of_cans
  end

  private

  def stock_can
    Can.new(cost_par_can: 0.65, cost_par_pond: 1.99, once_par_can: 4)
  end
end
