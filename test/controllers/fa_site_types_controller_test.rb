require 'test_helper'

class FaSiteTypesControllerTest < ActionController::TestCase
  setup do
    @fa_site_type = fa_site_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fa_site_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fa_site_type" do
    assert_difference('FaSiteType.count') do
      post :create, fa_site_type: { description: @fa_site_type.description, siteCode: @fa_site_type.siteCode }
    end

    assert_redirected_to fa_site_type_path(assigns(:fa_site_type))
  end

  test "should show fa_site_type" do
    get :show, id: @fa_site_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fa_site_type
    assert_response :success
  end

  test "should update fa_site_type" do
    patch :update, id: @fa_site_type, fa_site_type: { description: @fa_site_type.description, siteCode: @fa_site_type.siteCode }
    assert_redirected_to fa_site_type_path(assigns(:fa_site_type))
  end

  test "should destroy fa_site_type" do
    assert_difference('FaSiteType.count', -1) do
      delete :destroy, id: @fa_site_type
    end

    assert_redirected_to fa_site_types_path
  end
end
