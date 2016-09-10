require 'test_helper'

class TouristAttractionsControllerTest < ActionController::TestCase
  setup do
    @tourist_attraction = tourist_attractions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tourist_attractions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tourist_attraction" do
    assert_difference('TouristAttraction.count') do
      post :create, tourist_attraction: {  }
    end

    assert_redirected_to tourist_attraction_path(assigns(:tourist_attraction))
  end

  test "should show tourist_attraction" do
    get :show, id: @tourist_attraction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tourist_attraction
    assert_response :success
  end

  test "should update tourist_attraction" do
    patch :update, id: @tourist_attraction, tourist_attraction: {  }
    assert_redirected_to tourist_attraction_path(assigns(:tourist_attraction))
  end

  test "should destroy tourist_attraction" do
    assert_difference('TouristAttraction.count', -1) do
      delete :destroy, id: @tourist_attraction
    end

    assert_redirected_to tourist_attractions_path
  end
end
