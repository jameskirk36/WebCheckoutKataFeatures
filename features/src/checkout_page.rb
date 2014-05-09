require 'site_prism'

class EmptyBasketPage < SitePrism::Page
  set_url "/checkout/emptybasket" 
end

class NewCheckoutPage < SitePrism::Page
  set_url "/checkout"
  element :new_item_box, "input#new_item_input_box"
  element :add_item_button, "input#add_item_button"
  element :total_price, "div#total_price"
end
