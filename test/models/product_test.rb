require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  
  def setup
    @product = Product.new(name: "Example Product", price: "$20.00", description: "This is an example product.")
  end

  test "should be valid" do 
    assert @product.valid?
  end

  test "name should be present" do 
    @product.name = "    "
    assert_not @product.valid?
  end

  test "price should be present" do
  @product.price = "    "
  assert_not @product.valid? 
  end

  test "description should be present" do
    @product.description = "    "
    assert_not @product.valid?
  end
end
