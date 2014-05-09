# Before each scenario empty the basket
Before do
  homepage = CheckoutPage.new 
  homepage.empty_basket
end

Given(/^I am on the checkout page$/) do
  homepage = CheckoutPage.new
  homepage.arrive
end

When(/^I add an "(.*?)" to my basket$/) do |item|
  homepage = CheckoutPage.new
  homepage.add_item_to_basket(item)
end

When(/^I add the following items to my basket:$/) do |table|
  table.raw.flatten.each do |item|
    step "I add an \"#{item}\" to my basket"
  end
end

Then(/^I see the total price of "(.*?)"$/) do |total_price|
  homepage = CheckoutPage.new
  homepage.should_have_total_price(total_price)
end
