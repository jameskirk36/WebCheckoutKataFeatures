Given(/^I am on the checkout page$/) do
  homepage = CheckoutPage.new
  homepage.arrive
end

When(/^I add a single item to my basket$/) do
  homepage = CheckoutPage.new
  homepage.add_item_to_basket('A')
end

When(/^I add multiple items to my basket$/) do
  homepage = CheckoutPage.new
  homepage.add_item_to_basket('A')
end

When(/^I add a quantity of items to my basket where a special offer applies$/) do
  homepage = CheckoutPage.new
  homepage.add_item_to_basket('A')
  homepage.add_item_to_basket('A')
  homepage.add_item_to_basket('A')
end

Then(/^I see the price of the item$/) do
  homepage = CheckoutPage.new
  homepage.should_have_total_price('50')
end

Then(/^I see the total price of the items$/) do
  homepage = CheckoutPage.new
  homepage.should_have_total_price('100')
end

Then(/^I see the special offer price$/) do
  homepage = CheckoutPage.new 
  homepage.should_have_total_price('130')
end
