require "json"

class JsonParser
  def initialize(json_file)
    @json_file = JSON.parse(File.read(json_file))
    # p @json_file
    # p print_file_values
  end
  
  def print_file_values
    @json_file.each do |key, value|
      if value.is_a?(Hash) 
        value.each do |k,v|
          puts "nested Hash key: #{key} = \n --nested hash details key: #{k} - value#{v}"
        end
      elsif value.is_a?(Array)
        value.each { |a| puts "nested Array key: #{key} = \n --Array details values: #{a}"  }
        
      else
        puts "top level - key: #{key} - value: #{value}"
      end
                  
    end
  end
  
end

 parser = JsonParser.new("./colors.json")

 parser.print_file_values