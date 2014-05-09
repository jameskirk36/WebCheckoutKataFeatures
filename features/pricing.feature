
Feature:  Supermarket pricing rules

	Scenario Outline: Show the correct price of a single item
		Given I am on the checkout page
		When I add an "<item>" to my basket
		Then I see the total price of "<price>"
		
		Examples:
			| item | price |
			|     A|     50|
			|     B|     30|
			|     C|     20|
			|     D|     15|


	Scenario: Show the correct price of multiple items
		Given I am on the checkout page
		When I add the following items to my basket: 
			|	A |
			|	A |
		Then I see the total price of "100"

	Scenario: Show the correct price for items where a special offer applies
		Given I am on the checkout page
		When I add the following items to my basket: 
			|	A |
			|	A |
			|	A |
		Then I see the total price of "130"

