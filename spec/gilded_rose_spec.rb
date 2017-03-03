require_relative '../lib/gilded_rose'

describe "#update_quality" do

  context "with a single item" do
    let(:initial_sell_in) { 5 }
    let(:initial_quality) { 10 }
    let(:name) { "Rayban" }
    let(:item) { Item.new(name, initial_sell_in, initial_quality) }

    before { update_quality([item]) }

    it "your specs here" do
      puts "Sigle item: =================="
      puts "Name: #{item.name}"
      puts "Sell in: #{item.sell_in}"
      puts "Quality: #{item.quality}"
    end
  end

  context "with multiple items" do
    let(:items) {
      [
          Item.new("NORMAL ITEM", 5, 10),
          Item.new("Aged Brie", 3, 10),
          Item.new("Rayban", 10, 40),
          Item.new("Sulfuras, Hand of Ragnaros", 0, 80),
          Item.new("Backstage passes to a TAFKAL80ETC concert", 15, 20),
      ]
    }

    before { update_quality(items) }

    it "your specs here" do
      for item in items do
        puts "Multiple item: =================="
        puts "Name: #{item.name}"
        puts "Sell in: #{item.sell_in}"
        puts "Quality: #{item.quality}"
      end
    end
  end
end
