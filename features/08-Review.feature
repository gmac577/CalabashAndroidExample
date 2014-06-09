@Review
Feature: Reviewing order information on the Review screen
  As a User I need to enter my contact information for my sandwich order.
  The scenarios will include entering Name and Email information, Just name information
  and just email information and navigating to the next corresponding screen.

  Background: Navigating to the Review Order screen
    Given I am ready to review my order information 
  
  
Scenario: Selecting the Toasting Option for a Sandwich
  	Given I am on the "Review" screen
  	And I will see that the Order type field will have "Sandwich" displayed
    When I touch the "Submit order" button
  	Then I will see the email confirmation popup with "Place the order with the deli" displayed