require 'test_helper'

class ToursControllerTest < ActionController::TestCase
  setup do
    @tour = tours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tour" do
    assert_difference('Tour.count') do
      post :create, tour: { category: @tour.category, description: @tour.description, has_many_day: @tour.has_many_day, has_many_night: @tour.has_many_night, image_title: @tour.image_title, image_uid: @tour.image_uid, included_services: @tour.included_services, mark: @tour.mark, max_group_count: @tour.max_group_count, min_group_count: @tour.min_group_count, not_included_services: @tour.not_included_services, place: @tour.place, place_info: @tour.place_info, price: @tour.price, season: @tour.season, short_description: @tour.short_description, title: @tour.title, type: @tour.type }
    end

    assert_redirected_to tour_path(assigns(:tour))
  end

  test "should show tour" do
    get :show, id: @tour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tour
    assert_response :success
  end

  test "should update tour" do
    patch :update, id: @tour, tour: { category: @tour.category, description: @tour.description, has_many_day: @tour.has_many_day, has_many_night: @tour.has_many_night, image_title: @tour.image_title, image_uid: @tour.image_uid, included_services: @tour.included_services, mark: @tour.mark, max_group_count: @tour.max_group_count, min_group_count: @tour.min_group_count, not_included_services: @tour.not_included_services, place: @tour.place, place_info: @tour.place_info, price: @tour.price, season: @tour.season, short_description: @tour.short_description, title: @tour.title, type: @tour.type }
    assert_redirected_to tour_path(assigns(:tour))
  end

  test "should destroy tour" do
    assert_difference('Tour.count', -1) do
      delete :destroy, id: @tour
    end

    assert_redirected_to tours_path
  end
end
