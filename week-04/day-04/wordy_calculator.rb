class Calculator
  def self.run(equation)
    equation_parts = equation.split(" ")
    first_number = equation_parts.shift
    last_number = equation_parts.pop
    operation = equation_parts.join(" ")

    case operation
    when 'add'
      result = first_number.to_i + last_number.to_i
    when 'minus'
      result = first_number.to_i - last_number.to_i
    when 'times'
      result = first_number.to_i * last_number.to_i
    when 'divided by'
      result = first_number.to_i / last_number.to_i
    end

    puts "#{first_number} #{operation} #{last_number} equals #{result}"
  end
end