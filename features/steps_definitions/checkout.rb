# Before each scenario empty the basket
Before do
  @reset_page = EmptyBasketPage.new
  @reset_page.load
end

Given(/^I am on the checkout page$/) do
  @page = NewCheckoutPage.new
  @page.load
end

When(/^I add an "(.*?)" to my basket$/) do |item|
  @page.new_item_box.set item
  @page.add_item_button.click
end

When(/^I add the following items to my basket:$/) do |table|
  table.raw.flatten.each do |item|
    step "I add an \"#{item}\" to my basket"
  end
end

Then(/^I see the total price of "(.*?)"$/) do |total_price|
  @page.total_price.text.should == total_price
end
