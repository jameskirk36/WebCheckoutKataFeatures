Feature: Display the price of a single item

	Scenario: 
		Given I am on the checkout page
		When I add an item to my basket
		Then I see the total price of the item
	
