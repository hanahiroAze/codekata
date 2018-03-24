class Can
  def initialize(cost_par_can)
    @cost_par_can = cost_par_can.to_f
  end

  def cost(number_of_cans)
    @cost_par_can * (number_of_cans.to_f)
  end
end
