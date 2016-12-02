describe Till do
  let(:till)  { Till.new }
  it 'exists' do
    expect(till).to be_instance_of(Till)
  end
  it 'Product List are loaded' do
    hash = {"Cafe Latte"=>4.75, "Flat White"=>4.75, "Cappucino"=>3.85, "Single Espresso"=>2.05, "Double Espresso"=>3.75, "Americano"=>3.75, "Cortado"=>4.55, "Tea"=>3.65, "Choc Mudcake"=>6.4, "Choc Mousse"=>8.2, "Affogato"=>14.8, "Tiramisu"=>11.4, "Blueberry Muffin"=>4.05, "Chocolate Chip Muffin"=>4.05, "Muffin Of The Day"=>4.55}
    expect(till.products).to eq(hash)
  end
  it 'Shop details are loaded' do
    shop_details = {"shopName"=>"The Coffee Connection", "address"=>"123 Lakeside Way", "phone"=>"16503600708"}
    expect(till.shop_details).to eq(shop_details)
  end
  describe '#product()' do
    it 'returns a product' do
      expect(till.product("Single Espresso")).to eq(2.05)      
    end
  end
end
