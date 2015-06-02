require 'calabash-android/calabash_steps'
require 'data_magic'


#############################
########                    #
########    00-OrderType    #
########                    #
#############################

Given(/^I am on the Order type screen$/) do
  page(OrderTypePage).assert_order_type
end

When(/^I select the Sandwich option$/) do
  page(OrderTypePage).select_sandwich
end

When(/^I touch the Next button$/) do
  page(OrderTypePage).next_btn
end

Then(/^I will be placed on the Bread screen$/) do
  page(BreadPage).assert_bread
end

When(/^I swipe to the right$/) do
  performAction('swipe', 'right')
end

 When(/^I touch the Previous button$/) do
  page(BreadPage).previous_btn
end

Then(/^I will be placed on the Order type screen$/) do
  page(OrderTypePage).assert_order_type
end

When(/^I select the Salad option$/) do
  page(OrderTypePage).select_salad
end

Then(/^I will be placed on the Salad type screen$/) do
  page(SaladType).assert_salad_type
end


#############################
########                    #
########    00-BreadPage    #
########                    #
#############################

Given(/^I selected the Sandwich option$/) do
  page(OrderTypePage).select_sandwich
  page(OrderTypePage).next_btn
end

Given(/^I am on the Bread screen$/) do
  page(BreadPage).assert_bread
end

When(/^I select a Bread option$/) do
  page(BreadPage).select_bread_type
end

Then(/^I will be placed on the Meats screen$/) do
  page(MeatsPage).assert_meats
end
