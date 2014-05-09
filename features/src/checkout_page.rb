require 'capybara/cucumber'
require 'rspec/expectations'

class CheckoutPage
  include Capybara::DSL
  include RSpec::Matchers

  def arrive
	 visit '/checkout'
  end
  def empty_basket
    visit '/checkout/emptybasket'
  end

  def add_item_to_basket(item)
    fill_in 'new_item_input_box', :with => item
    click_button 'Add'
  end

  def should_have_total_price(total_price)
    find('div#total_price').should have_content total_price
  end
end
