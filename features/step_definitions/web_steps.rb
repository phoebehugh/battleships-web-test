Given(/^I am on the homepage$/) do
  visit "/"
end

When(/^I follow "([^"]*)"$/) do |arg1|
  click_link("Start a New Game!")
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content "What's your name?"
end


Given(/^I am on the registration page$/) do
  visit "/registration"
end

When(/^I fill in name with "([^"]*)"$/) do |arg1|
  fill_in("name", with: "")
end

# Then(/^I should see "([^"]*)"$/) do |arg1|
#   expect(page).to have_content "Hello, Phoebe"
# end

When(/^the player does not input their name$/) do

end
