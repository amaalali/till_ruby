require 'json'

class Till
  def initialize
    @shop_details = populate_product_list
    @product_list = populate_shop_details
  end

  def products
    @product_list.dup
  end

  def shop_details
    @shop_details.dup
  end

  def product(name)
    list = products
    list[name]
  end

  private

  def populate_product_list
    data_hash = load_hash
    data_hash.delete("prices")
    return data_hash
  end

  def populate_shop_details
    data_hash = load_hash
    return data_hash["prices"].first
  end

  def load_hash
    file = File.read('./hipstercoffee.json')
    data_hash = JSON.parse(file)
    return data_hash
  end
end
