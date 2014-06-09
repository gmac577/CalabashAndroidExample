require 'calabash-android/cucumber'
require 'data_magic'

Before do
  DataMagic.yml_directory = 'features/config/data'
end
