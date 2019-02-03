require 'test_helper'

class ZutatensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zutaten = zutatens(:one)
  end

  test "should get index" do
    get zutatens_url
    assert_response :success
  end

  test "should get new" do
    get new_zutaten_url
    assert_response :success
  end

  test "should create zutaten" do
    assert_difference('Zutaten.count') do
      post zutatens_url, params: { zutaten: { name: @zutaten.name, preis: @zutaten.preis } }
    end

    assert_redirected_to zutaten_url(Zutaten.last)
  end

  test "should show zutaten" do
    get zutaten_url(@zutaten)
    assert_response :success
  end

  test "should get edit" do
    get edit_zutaten_url(@zutaten)
    assert_response :success
  end

  test "should update zutaten" do
    patch zutaten_url(@zutaten), params: { zutaten: { name: @zutaten.name, preis: @zutaten.preis } }
    assert_redirected_to zutaten_url(@zutaten)
  end

  test "should destroy zutaten" do
    assert_difference('Zutaten.count', -1) do
      delete zutaten_url(@zutaten)
    end

    assert_redirected_to zutatens_url
  end
end
