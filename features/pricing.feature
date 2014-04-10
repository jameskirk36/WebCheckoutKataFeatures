
Feature:  Supermarket pricing rules

	Scenario: Show the correct price of a single item
		Given I am on the checkout page
		When I add a single item to my basket
		Then I see the price of the item

	Scenario: Show the correct price of multiple items
		Given I am on the checkout page
		When I add multiple items to my basket
		Then I see the total price of the items

	Scenario: Show the correct price for items where a special offer applies
		Given I am on the checkout page
		When I add a quantity of items to my basket where a special offer applies
		Then I see the special offer price
