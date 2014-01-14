require 'calabash-android/abase'

class OrderType < Calabash::ABase

	def select_option
		performAction('click_on_text', sandwich)
	end

end