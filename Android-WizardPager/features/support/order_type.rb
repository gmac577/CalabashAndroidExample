require 'calabash-android/abase'

class OrderType < Calabash::ABase

	def select_option
		performaAction('click_on_text', sandwich)
	end

end