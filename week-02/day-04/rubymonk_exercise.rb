class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def place_order(*orders)
    the_order = orders[0]

    # cost = 0
    # the_order.keys.each do |element_of_array|
    #   cost += @menu[the_item] * the_order[the_item]
    # end

    the_order.keys.inject(0) do |folded_piece, key|
      next_piece = @menu[key] * the_order[key]
      folded_piece + next_piece
    end
  end
end

baker_bros = Restaurant.new(
  {
    rice: 3,
    noodles: 2,
    pasta: 8
  }
)
puts baker_bros.place_order(
  {
    rice: 10,
    noodles: 15,
    pasta: 3
  }
)









