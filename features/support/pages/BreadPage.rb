require 'calabash-android/abase'

class BreadPage < Calabash::ABase

	def trait
    "* text:'Bread'"
  	end

	def cold_cuts
	touch("CheckedTextView marked:'Pretzel'")
	touch("Button marked:'Next'")
	end
end	