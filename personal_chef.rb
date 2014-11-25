class PersonalChef

  def make_toast(color)
    puts "Making your toast #{color}"
    
  end

  def gameplan(meals)
  	meals.each do |meal|
  	puts "We'll have #{meals}..."
  end

  all_meals = meals.join(", ")
  puts "in summary: #{all_meals}"
end
end
=begin
  def make_eggs(quantity)
  	quantity.times.do
    puts "Making you eggs!"
end
puts "I'm done"
    return self
  end
=begin
  def good_morning
  	today = Date.today.strftime("%A")
  	day_of_year = Date.today.yday
  	puts "Happy #{today}, it's the #{day_of_year} day of the year"
  	return self
  end
=end



