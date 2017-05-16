require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
    assert_select "title", "Home | Starlight Kids"
  end

  test "should get products" do
    get static_pages_products_url
    assert_response :success
    assert_select "title", "Products | Starlight Kids"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | Starlight Kids"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | Starlight Kids"
  end

  test "should get cart" do
    get static_pages_cart_url
    assert_response :success
    assert_select "title", "Cart | Starlight Kids"
  end

  test "should get checkout" do
    get static_pages_checkout_url
    assert_response :success
    assert_select "title", "Checkout | Starlight Kids"
  end

end