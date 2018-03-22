class Cashier
  def check(number_of_cans)
    if number_of_cans % 3 == 0
      "$#{number_of_cans / 3}"
    elsif number_of_cans == "1pound"
      "$1.99"
    else
      "$#{0.65 * number_of_cans}"
    end
  end
end
