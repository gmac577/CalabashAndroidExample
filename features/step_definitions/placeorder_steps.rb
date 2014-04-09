require 'calabash-android/calabash_steps'

## Order Type ##

Given(/^I am on the "(.*?)" screen$/) do |ordertype|
  #element_exists(text: uiquery, :"textField placeholder: 'Sandwich'")
  performAction('assert_text',ordertype, true)
end

When(/^I select the "(.*?)" option$/) do |sandwich| 
  #touch("view marked: 'Sandwich'")
  performAction('click_on_text',sandwich)
end

When(/^I swipe to the right$/) do
  performAction('swipe', 'right')
end


When(/^I touch the "(.*?)" button$/) do |nextbutton|
  performAction('press_button_with_text', nextbutton)
end

Then(/^I will be placed on the "(.*?)" screen$/) do |bread|
  performAction('assert_text',bread, true)
end


##Breads Screen ###

Given(/^I selected the Sandwich option$/) do
  #@ordertype.select_option
  macro 'I see "Order type"'	
  macro 'I touch the "Sandwich" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Bread"'
end

## Meats Screen ##

And(/^I am ready to make my cold cuts selection$/) do
  macro 'I see "Order type"'	
  macro 'I touch the "Sandwich" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Bread"'	
  macro 'I touch the "White" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Meats"'
end

## Veggies Screen ##

Given(/^I am ready to make my veggie selection$/) do
  macro 'I see "Order type"'	
  macro 'I touch the "Sandwich" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Bread"'
  #macro 'I see "Bread"'	
  macro 'I touch the "White" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Meats"'
  #macro 'I see "Meats"'	
  macro 'I touch the "Turkey" text'
  macro 'I touch the "Roast Beef" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Veggies"'
end

## Cheeses Screen ##

Given(/^I am ready to make my cheese selection$/) do
  macro 'I see "Order type"'	
  macro 'I touch the "Sandwich" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Bread"'
  #macro 'I see "Bread"'	
  macro 'I touch the "White" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Meats"'
  #macro 'I see "Meats"'	
  macro 'I touch the "Turkey" text'
  macro 'I touch the "Roast Beef" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Veggies"'
  #macro 'I see "Veggies"'	
  macro 'I touch the "Tomatoes" text'
  macro 'I touch the "Peppers" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Cheeses"'
end


## Toasting Decision screen ##

Given(/^I am ready to decide to toast my sandwich$/) do
  macro 'I see "Order type"'	
  macro 'I touch the "Sandwich" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Bread"'
  #macro 'I see "Bread"'	
  macro 'I touch the "White" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Meats"'
  #macro 'I see "Meats"'	
  macro 'I touch the "Turkey" text'
  macro 'I touch the "Roast Beef" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Veggies"'
  #macro 'I see "Veggies"'	
  macro 'I touch the "Tomatoes" text'
  macro 'I touch the "Peppers" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Cheeses"'
  macro 'I touch the "Swiss" text'
  macro 'I touch the "Provolone" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Toasted"'
end


## Toasting Time screen ##

Given(/^I am selecting the toasting time for my sandwich$/) do
  macro 'I see "Order type"'	
  macro 'I touch the "Sandwich" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Bread"'
  macro 'I see "Bread"'	
  macro 'I touch the "White" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Meats"'
  macro 'I see "Meats"'	
  macro 'I touch the "Turkey" text'
  macro 'I touch the "Roast Beef" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Veggies"'
  macro 'I see "Veggies"'	
  macro 'I touch the "Tomatoes" text'
  macro 'I touch the "Peppers" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Cheeses"'
  macro 'I touch the "Swiss" text'
  macro 'I touch the "Provolone" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Toasted"'
  macro 'I touch the "Yes" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Toast time"'
end


## Your Info screen ##

Given(/^I am ready to enter my information for my sandwich order$/) do
  macro 'I see "Order type"'	
  macro 'I touch the "Sandwich" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Bread"'
  macro 'I see "Bread"'	
  macro 'I touch the "White" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Meats"'
  macro 'I see "Meats"'	
  macro 'I touch the "Turkey" text'
  macro 'I touch the "Roast Beef" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Veggies"'
  macro 'I see "Veggies"'	
  macro 'I touch the "Tomatoes" text'
  macro 'I touch the "Peppers" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Cheeses"'
  macro 'I touch the "Swiss" text'
  macro 'I touch the "Provolone" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Toasted"'
  macro 'I touch the "Yes" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Toast time"'
  macro 'I touch the "2 minutes" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Your info"'
end


And(/^I enter "(.*?)" into the Name field$/) do |fullname|
  performAction('enter_text_into_id_field', fullname, 'your_name')
end

And(/^I enter "(.*?)" into the Email field$/) do |fullemail|
  performAction('enter_text_into_id_field', fullemail, 'your_email')
end


## Review ##

Given(/^I am ready to review my order information$/) do
  macro 'I see "Order type"'	
  macro 'I touch the "Sandwich" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Bread"'
  macro 'I see "Bread"'	
  macro 'I touch the "White" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Meats"'
  macro 'I see "Meats"'	
  macro 'I touch the "Turkey" text'
  macro 'I touch the "Roast Beef" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Veggies"'
  macro 'I see "Veggies"'	
  macro 'I touch the "Tomatoes" text'
  macro 'I touch the "Peppers" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Cheeses"'
  macro 'I touch the "Swiss" text'
  macro 'I touch the "Provolone" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Toasted"'
  macro 'I touch the "Yes" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Toast time"'
  macro 'I touch the "2 minutes" text'
  macro 'I press view with id "next_button"'
  macro 'I should see "Your info"'
  macro 'I enter text "George Washington" into field with id "your_name"'
  macro 'I enter text "gwashington@abc.com" into field with id "your_email"'
  macro 'I press view with id "next_button"'
  macro 'I should see "Review"'
end

Given(/^I will see that the Order type field will have "(.*?)" displayed$/) do |sandwich|
  performAction('assert_text',sandwich, true)
end

Then(/^I will see the email confirmation popup with "(.*?)" displayed$/) do |suborder|
  performAction('assert_text',suborder, true)
end



