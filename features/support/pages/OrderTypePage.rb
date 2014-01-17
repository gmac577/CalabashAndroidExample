require 'calabash-android/abase'

class OrderTypePage < Calabash::ABase

	def trait
    "* text:'Order type'"
  	end

	def sandwich_option
	touch("CheckedTextView marked:'Sandwich'")
  	touch("Button marked:'Next'")
	end
end	