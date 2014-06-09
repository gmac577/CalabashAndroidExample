require 'calabash-android/abase'

class SaladType < Calabash::ABase

  def trait
    "* text:'Salad type'"
    end

  @@sandwich = "* text:'Greek'"
  @@sandwich = "* text:'Caesar'"
  @@next = "Button marked:'Next'"
  @@previous = "Button marked:'Previous'"
  @@saladtype = "TextView {text CONTAINS 'Salad type'}"


  def select_sandwich
    touch(@@sandwich)
  end

  def select_salad
    touch(@@salad)
  end

  def previous_btn
    touch(@@previous)
  end

  def next_btn
    touch(@@next)
  end

  def assert_salad_type
    wait_for_elements_exist([@@saladtype],:timeout => 5)
  end

end
