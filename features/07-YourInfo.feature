@Info
Feature: Entering information on the Your Info screen for the Sandwich order
  As a User I need to enter my contact information for my sandwich order.
  The scenarios will include entering Name and Email information, Just name information
  and just email information and navigating to the next corresponding screen.

  Background: Navigating to the Your Info Screen
    Given I am ready to enter my information for my sandwich order
  
  
Scenario: Selecting the Toasting Option for a Sandwich
  	Given I am on the "Your info" screen
  	And I enter "George Washington" into the Name field
  	And I enter "gwashington@abc.com" into the Email field
    When I touch the "Next" button
  	Then I will be placed on the "Review" screen