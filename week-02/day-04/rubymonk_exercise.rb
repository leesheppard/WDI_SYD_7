class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    the_order = orders[0]

    # cost = 0
    # the_order.keys.each do |element_of_array|
    #   cost += @menu[the_item] * the_order[the_item]
    # end

    the_order.keys.inject(0) do |sum, element_of_array|
      cost + @menu[key] * the_order[key]
    end
  end
end

baker_bros = Restaurant.new(
  {
    rice: 3,
    noodles: 2
  }
)
puts baker_bros.cost(
  {
    rice: 1,
    noodles: 1
  }
)









