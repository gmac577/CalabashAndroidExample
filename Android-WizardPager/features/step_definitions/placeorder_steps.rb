require 'calabash-android/calabash_steps'


def veggie_option
	touch("CheckedTextView marked:'Turkey'")
	touch("Button marked:'Next'")
end

def cheese_option
	touch("CheckedTextView marked:'Lettuce'")
	touch("Button marked:'Next'")
end

def toast_decision
	touch("CheckedTextView marked:'Provolone'")
	touch("Button marked:'Next'")
end

def toasted_goodness
	touch("CheckedTextView marked:'Yes'")
	touch("Button marked:'Next'")
end

def your_info
	touch("CheckedTextView marked:'2 minutes'")
	touch("Button marked:'Next'")
end

def review_order
	macro 'I enter text "George Washington" into field with id "your_name"'
  	macro 'I enter text "gwashington@abc.com" into field with id "your_email"'
	check_element_exists("TextView marked:'Review'")
end

## Place Order ##


Given(/^I am on the Order type scree$/) do
  check_element_exists("TextView marked:'Order type'")
end

When(/^I select the Sandwich option$/) do 
  touch("CheckedTextView marked:'Sandwich'")
end

When(/^I touch the Next button$/) do 
  touch("Button marked:'Next'")
end

Then(/^I will be placed on the Bread screen$/) do 
  check_element_exists("TextView marked:'Bread'")
end

When(/^I swipe to the right$/) do
 performAction('swipe', 'right')
end

When(/^I touch the Previous button$/) do
  touch("Button marked:'Previous'")
end

Then(/^I will be placed on the Order type screen$/) do
  check_element_exists("TextView marked:'Order type'")
end

When(/^I select the Salad option$/) do
  touch("CheckedTextView marked:'Salad'")
end

Then(/^I will be placed on the Salad type screen$/) do
  check_element_exists("TextView marked:'Salad type'")
end


## Bread ##

Given(/^I selected the Sandwich option$/) do
  order = page(OrderTypePage).await    
      @page = order.sandwich_option
  
  
end

Given(/^I am on the Bread screen$/) do 
  check_element_exists("TextView marked:'Bread'")
end

When(/^I select the Pretzel option/) do 
  touch("CheckedTextView marked:'Pretzel'")
end

Then(/^I will be placed on the Meats screen$/) do
   check_element_exists("TextView marked:'Meats'")
end


## Meats ##

Given(/^I am ready to make my cold cuts selection$/) do
  bread = page(BreadPage).await    
      @page = bread.cold_cuts
end

Given(/^I am on the Meats screen$/) do
  check_element_exists("TextView marked:'Meats'")
end

When(/^I select the Turkey option$/) do
  touch("CheckedTextView marked:'Turkey'")
end

When(/^I select the Roast Beef option$/) do
  touch("CheckedTextView marked:'Roast Beef'")
end

Then(/^I will be placed on the Veggies screen$/) do
  check_element_exists("TextView marked:'Veggies'")
end


## Veggies ##

Given(/^I am ready to make my veggie selection$/) do
  sandwich_option
  cold_cuts
  veggie_option
end

Given(/^I am on the Veggies screen$/) do
  check_element_exists("TextView marked:'Veggies'")
end

When(/^I select the Lettuce option$/) do
  touch("CheckedTextView marked:'Lettuce'")
end

When(/^I select the Cucumbers option$/) do
  touch("CheckedTextView marked:'Cucumbers'")
end

Then(/^I will be placed on the Cheeses screen$/) do
  check_element_exists("TextView marked:'Cheeses'")
end


## Cheese ##

Given(/^I am ready to make my cheese selection$/) do
  sandwich_option
  cold_cuts
  veggie_option
  cheese_option
end

Given(/^I am on the Cheeses screen$/) do
  check_element_exists("TextView marked:'Veggies'")
end

When(/^I select the Swiss option$/) do
  touch("CheckedTextView marked:'Swiss'")
end

When(/^I select the Provolone option$/) do
  touch("CheckedTextView marked:'Provolone'")
end

Then(/^I will be placed on the Toasted screen$/) do
  check_element_exists("TextView marked:'Toasted?'")
end

## Toasted ##

Given(/^I am ready to decide to toast my sandwich$/) do
  sandwich_option
  cold_cuts
  veggie_option
  cheese_option
  toast_decision
end

Given(/^I am on the Toasted screen$/) do
  check_element_exists("TextView marked:'Toasted?'")
end

Given(/^I select the Yes option$/) do
  touch("CheckedTextView marked:'Yes'")
end

Then(/^I will be placed on the Toast time screen$/) do
  check_element_exists("TextView marked:'Toast time'")
end

Given(/^I select the No option$/) do
  touch("CheckedTextView marked:'No'")
end

Then(/^I will be placed on the Your info screen$/) do
  check_element_exists("TextView marked:'Your info'")
end


## Toasted Time ## 

Given(/^I am selecting the toasting time for my sandwich$/) do
  sandwich_option
  cold_cuts
  veggie_option
  cheese_option
  toast_decision
  toasted_goodness
end

Given(/^I am on the Toast time screen$/) do
  check_element_exists("TextView marked:'Toast time'")
end

Given(/^I select the two minutes option$/) do
  touch("CheckedTextView marked:'2 minutes'")
end


## Your Info ##

Given(/^I am ready to enter my information for my sandwich order$/) do
  sandwich_option
  cold_cuts
  veggie_option
  cheese_option
  toast_decision
  toasted_goodness
  your_info
end

Given(/^I am on the Your info screen$/) do
  check_element_exists("TextView marked:'Your info'")
end

Given(/^I enter "(.*?)" into the Name field$/) do |fullname|
  performAction('enter_text_into_id_field',fullname, 'your_name')
  #touch("TextView marked:'Name'")
  #keyboard_enter_text("George Washington")
end

Given(/^I enter "(.*?)" into the Email field$/) do |fullemail|
  performAction('enter_text_into_id_field',fullemail, 'your_email')
end

Then(/^I will be placed on the Review screen$/) do
  check_element_exists("TextView marked:'Review'")
end

## Review ##

Given(/^I am ready to review my order information$/) do
  sandwich_option
  cold_cuts
  veggie_option
  cheese_option
  toast_decision
  toasted_goodness
  your_info
  review_order
end

Given(/^I am on the Review screen$/) do
  check_element_exists("TextView marked:'Review'")
end

Given(/^I will see that the Order type field will have Sandwich displayed$/) do
  check_element_exists("TextView marked:'Sandwich'")
end

When(/^I touch the "(.*?)" button$/) do |nextbutton|
  performAction('press_button_with_text', nextbutton)
  #touch("TextView marked:'Submit order'")
end

Then(/^I will see the email confirmation popup with Place the order with the deli displayed$/) do
  check_element_exists3("TextView marked:'Place the order with the deli? You will receive an email confirmation.'")
end
