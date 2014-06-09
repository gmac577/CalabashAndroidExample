@Meats
Feature: Selecting the Meat option for the sandwich
  As a User I want to select the type of meat(s) for my sandwich order.
  The scenarios will include selecting the meat(s) and navigating to the next
  corresponding screen.

  Background: Navigating to the Meat Selection screen
    Given I am ready to make my cold cuts selection


   @sandwich
   Scenario: Selecting the Meat Options for a Sandwich
  	Given I am on the Meats screen
  	When I select the Turkey option
  	And I select the Roast Beef option
  	And I touch the Next button
  	Then I will be placed on the Veggies screen
