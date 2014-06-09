require 'calabash-android/abase'

class MeatsPage < Calabash::ABase

  def trait
    "* text:'Meats'"
    end


  @@next = "Button marked:'Next'"
  @@previous = "Button marked:'Previous'"
  @@meattype = "TextView {text CONTAINS 'Meats'}"



  def assert_meats
    wait_for_elements_exist([@@meattype],:timeout => 5)
  end

end
