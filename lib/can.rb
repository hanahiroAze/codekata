class Can
  def initialize(cost_par_can:, cost_par_pond:, once_par_can:)
    @cost_par_can = cost_par_can.to_f
    @cost_par_pond = cost_par_pond.to_f
    @once_par_can = once_par_can.to_f
  end

  def cost_by_numbers(number_of_cans)
    @cost_par_can * (number_of_cans.to_f)
  end

  def cost_by_weight(number_of_cans)
    @cost_par_pond * ((@once_par_can * number_of_cans.to_f)/16)
  end
end
