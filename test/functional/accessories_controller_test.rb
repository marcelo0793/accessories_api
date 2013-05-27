require 'test_helper'

class AccessoriesControllerTest < ActionController::TestCase
  setup do
    @accessory = accessories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accessories)
  end

  test "should create accessory" do
    assert_difference('Accessory.count') do
      post :create, accessory: { description: @accessory.description, name: @accessory.name, origin: @accessory.origin, price: @accessory.price }
    end

    assert_response 201
  end

  test "should show accessory" do
    get :show, id: @accessory
    assert_response :success
  end

  test "should update accessory" do
    put :update, id: @accessory, accessory: { description: @accessory.description, name: @accessory.name, origin: @accessory.origin, price: @accessory.price }
    assert_response 204
  end

  test "should destroy accessory" do
    assert_difference('Accessory.count', -1) do
      delete :destroy, id: @accessory
    end

    assert_response 204
  end
end
