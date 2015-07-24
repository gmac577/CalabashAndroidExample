require 'calabash-android/abase'

class OrderType < Calabash::ABase
	
	def trait
		"* text:'Order type'"
	end

	def await(opts={})
		wait_for_elements_exist([trait], :timeout => 3)
	end


	#elements
	@@sandwich_id = "CheckedTextView text:'Sandwich"
	@@salad_id = "MangoEditText id:'password_edit"
	@@next_id = "MangoButton text:'Try it or sign up!"

	def sandwich_radio_button
		query("* text:'Sandwich'")
	end

	def select_sandwich
		touch(sandwich_radio_button)
	end
end