def send_tax_invoice(order)
  order_total(order)
  compiled_email = template('')
  send_email
end

def items(order)
  order.line_items.map { |n| [n.item_title, n.price] }
end

def order_total(order)
  items(order).reduce(0) { |sum, n| sum + n[1] }
end