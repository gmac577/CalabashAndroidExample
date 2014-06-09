require 'calabash-android/abase'

class OrderTypePage < Calabash::ABase

	def trait
    "* text:'Order type'"
  	end

  @@sandwich = "* text:'Sandwich'"
  @@salad = "* text:'Salad'"
  @@next = "Button marked:'Next'"
  @@ordertype = "TextView {text CONTAINS 'Order type'}"


  def select_sandwich
    touch(@@sandwich)
  end

  def select_salad
    touch(@@salad)
  end

  def next_btn
    touch(@@next)
  end

  def assert_order_type
    wait_for_elements_exist([@@ordertype],:timeout => 5)
  end

end
