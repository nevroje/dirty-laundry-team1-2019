Given("I am on the {string} page") do |string|
  visit root_path
end

When("I click on {string}") do |calendar|
  click_on calendar
end
