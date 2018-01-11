def line(current_line)
  if current_line.length == 0
    puts "The line is currently empty."
  else
    response = "The line is currently:"
    current_line.each_with_index { |name, index|
      response += " #{index + 1}. #{name}"
    }
    puts response
  end
end

def take_a_number(current_line, name)
  puts "Welcome, #{name}. You are number #{current_line.length + 1} in line."
  current_line.push(name)
end

def now_serving(current_line)
  if current_line.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{current_line[0]}."
    return current_line.shift
  end
end