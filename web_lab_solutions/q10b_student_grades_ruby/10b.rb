students = [
  { name: "Anita", score: 91 },
  { name: "Ravi", score: 78 },
  { name: "Sneha", score: 66 },
  { name: "Kiran", score: 45 }
]

def grade_for(score)
  case score
  when 90..100 then "A"
  when 75...90 then "B"
  when 60...75 then "C"
  when 50...60 then "D"
  else "F"
  end
end

puts "Student Summary"
puts "---------------"
students.each do |student|
  grade = grade_for(student[:score])
  puts "Name: #{student[:name]}, Score: #{student[:score]}, Grade: #{grade}"
end
