require 'calabash-android/abase'

class BreadPage < Calabash::ABase
  include PagePopulator

	def trait
    "* text:'Bread'"
  	end

	@@white = "CheckedTextView text:'White'"
  @@white = "CheckedTextView text:'Wheat'"
  @@white = "CheckedTextView text:'Rye'"
  @@white = "CheckedTextView text:'Pretzel'"
  @@white = "CheckedTextView text'Ciabatta'"
	@@next = "Button marked:'Next'"
  @@previous = "Button marked:'Previous'"
	@@breadtype = "TextView {text CONTAINS 'Bread'}"


	def select_bread_type
    bread = data_for('default_data/bread_type')['bread']
    select_bread(bread)
	end

	def select_bread(bread)
		touch(query("CheckedTextView text:'#{bread}'"))
	end

  def previous_btn
    touch(@@previous)
  end

	def next_btn
		touch(@@next)
	end

	def assert_bread
		wait_for_elements_exist([@@breadtype],:timeout => 5)
	end

end
