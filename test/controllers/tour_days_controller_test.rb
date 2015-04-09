require 'test_helper'

class TourDaysControllerTest < ActionController::TestCase
  setup do
    @tour_day = tour_days(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tour_days)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tour_day" do
    assert_difference('TourDay.count') do
      post :create, tour_day: { day_desc: @tour_day.day_desc, day_note: @tour_day.day_note, day_num: @tour_day.day_num }
    end

    assert_redirected_to tour_day_path(assigns(:tour_day))
  end

  test "should show tour_day" do
    get :show, id: @tour_day
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tour_day
    assert_response :success
  end

  test "should update tour_day" do
    patch :update, id: @tour_day, tour_day: { day_desc: @tour_day.day_desc, day_note: @tour_day.day_note, day_num: @tour_day.day_num }
    assert_redirected_to tour_day_path(assigns(:tour_day))
  end

  test "should destroy tour_day" do
    assert_difference('TourDay.count', -1) do
      delete :destroy, id: @tour_day
    end

    assert_redirected_to tour_days_path
  end
end
