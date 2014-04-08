Given(/^I am on the checkout page$/) do
  homepage = CheckoutPage.new
  homepage.arrive
end

When(/^I add an item to my basket$/) do
  homepage = CheckoutPage.new
  homepage.add_item_to_basket('A')
end

Then(/^I see the total price of the item$/) do
  homepage = CheckoutPage.new
  homepage.should_have_total_price('50')
end


