require 'test_helper'

class TouristAttractionDetailsControllerTest < ActionController::TestCase
  setup do
    @tourist_attraction_detail = tourist_attraction_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tourist_attraction_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tourist_attraction_detail" do
    assert_difference('TouristAttractionDetail.count') do
      post :create, tourist_attraction_detail: {  }
    end

    assert_redirected_to tourist_attraction_detail_path(assigns(:tourist_attraction_detail))
  end

  test "should show tourist_attraction_detail" do
    get :show, id: @tourist_attraction_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tourist_attraction_detail
    assert_response :success
  end

  test "should update tourist_attraction_detail" do
    patch :update, id: @tourist_attraction_detail, tourist_attraction_detail: {  }
    assert_redirected_to tourist_attraction_detail_path(assigns(:tourist_attraction_detail))
  end

  test "should destroy tourist_attraction_detail" do
    assert_difference('TouristAttractionDetail.count', -1) do
      delete :destroy, id: @tourist_attraction_detail
    end

    assert_redirected_to tourist_attraction_details_path
  end
end
