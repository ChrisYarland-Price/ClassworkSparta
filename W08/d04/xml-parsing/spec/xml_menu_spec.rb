require 'spec_helper'

describe "XML menu" do

  before(:all) do
    @xml_menu = Nokogiri::XML(File.read('xml_menu.xml'))
  end

  it "no price should be more than £10" do
    truth = false
    @xml_menu.search('price').each do |i|
      price = i.text
      price.slice!(0) 
      if(price.to_f < 10)
        truth = true 
      else 
        truth = false 
      end
    end
      expect(truth).to be true
  end

  it "should have no item with calories over 1000 except for the full breakfast" do
    truth = false
    @xml_menu.search('calories').each do |e|  
      if e.text.to_i <= 1000 
        truth = true
      elsif e.parent.search('name').inner_text == "Full Breakfast"
        truth = true
      else
        truth = false 
      end         
    end
    expect(truth).to be true
  end

  it "should have all waffle dishes stating you get two waffles" do
    truth = false
    @xml_menu.search('name').each do |item|
      if item.content.include? "Waffles"
        if item.parent.search('description').text.include? "Two"
          truth = true
        end        
      end

    end
    expect(truth).to be true
  end


end