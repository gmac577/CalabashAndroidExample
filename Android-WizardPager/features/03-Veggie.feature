@Veggie
Feature: Selecting the Veggie Option
  As a User I want to select the type of veggies for my sandwich order.
  The scenarios will include selecting the veggies and navigating to the next
  corresponding screen.

  Background: Navigating to the Veggie Screen
    Given I am ready to make my veggie selection
  
  
Scenario: Selecting the Veggie Options for a Sandwich
  	Given I am on the Veggies screen
  	When I select the Lettuce option
  	And I select the Cucumbers option
  	And I touch the Next button
  	Then I will be placed on the Cheeses screen