@Toasted
Feature: Selecting the Toasted Option for the Sandwich
  As a User I want to select the option to toast my sandwich.
  The scenarios will include selecting the toast yes or no options and navigating to the next
  corresponding screen.

  Background: Navigating to the Toasted Screen
    Given I am ready to decide to toast my sandwich
  
  
Scenario: Selecting the "Yes" Toasting Option for a Sandwich
  	Given I am on the Toasted screen
  	And I select the Yes option
    When I touch the Next button
  	Then I will be placed on the Toast time screen


Scenario: Selecting the "No" Toasting Option for a Sandwich
  	  Given I am on the Toasted screen
  	  And I select the No option
  	  When I touch the Next button
  	  Then I will be placed on the Your info screen