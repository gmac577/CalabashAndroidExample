module PagePopulator
    include DataMagic

    def select_bread_with(data)
      data.each do |key, value|
        element = "CheckedTextView text:'#{key}'"
      end
    end
end
