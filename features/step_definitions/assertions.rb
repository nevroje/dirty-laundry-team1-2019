Then("I should see a {string}") do |expected_content|
  expect(page).to have_content expected_content
end