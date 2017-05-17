require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | Starlight Kids"
  end

  test "should get products" do
    get products_path
    assert_response :success
    assert_select "title", "Products | Starlight Kids"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Starlight Kids"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Starlight Kids"
  end

  test "should get cart" do
    get cart_path
    assert_response :success
    assert_select "title", "Cart | Starlight Kids"
  end

  test "should get checkout" do
    get checkout_path
    assert_response :success
    assert_select "title", "Checkout | Starlight Kids"
  end

end
