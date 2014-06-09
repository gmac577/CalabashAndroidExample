@Cheese
Feature: Selecting the Cheese Option for the Sandwich
  As a User I want to select the type of cheeses for my sandwich order.
  The scenarios will include selecting the cheeses and navigating to the next
  corresponding screen.

  Background: Navigating to the Veggie Screen
    Given I am ready to make my cheese selection
  
  
Scenario: Selecting the Cheese Options for a Sandwich
  	Given I am on the "Cheeses" screen
  	When I select the "Swiss" option
  	And I select the "Provolone" option
  	And I touch the "Next" button
  	Then I will be placed on the "Toasted" screen
