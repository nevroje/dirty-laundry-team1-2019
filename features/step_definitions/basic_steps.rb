Given("I am on the {string} page") do |string|
  visit root_path
end

When("I click on {string} on {string}") do |time, date|
 #slot_time = Time.parse(time)
 
 #date_slot = Date.parse(date)
 case date
  when "tomorrow"
    date_slot = Date.today + 1.day
  end
  
  within("##{date_slot.to_formatted_s(:dc)}") do
    click_on time
  end
end

