require 'calabash-android/calabash_steps'


#############################
########                    #
########    00-OrderType    #
########                    #
#############################
Given(/^I am on the Order type screen$/) do
  page(OrderTypePage).assert_order_type
end

When(/^I select the Sandwich option$/) do
  touch query("* text:'Sandwich'")
end

When(/^I touch the Next button$/) do
  touch query("Button marked:'Next'")
end

Then(/^I will be placed on the Bread screen$/) do
  query("TextView {text CONTAINS 'Bread'}")
end
