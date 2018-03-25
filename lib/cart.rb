class Cart
  def initialize
    @number_of_cans = 0
  end

  def add_can(number_of_cans)
    @number_of_cans += number_of_cans.to_i
  end

  def return_to_shelf(number_of_cans)
    @number_of_cans -= number_of_cans.to_i if @number_of_cans - number_of_cans.to_i >= 0
  end

  def number_of_cans
    @number_of_cans
  end
end
