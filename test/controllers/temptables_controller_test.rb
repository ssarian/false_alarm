require 'test_helper'

class TemptablesControllerTest < ActionController::TestCase
  setup do
    @temptable = temptables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:temptables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create temptable" do
    assert_difference('Temptable.count') do
      post :create, temptable: { emp_number: @temptable.emp_number, f_name: @temptable.f_name }
    end

    assert_redirected_to temptable_path(assigns(:temptable))
  end

  test "should show temptable" do
    get :show, id: @temptable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @temptable
    assert_response :success
  end

  test "should update temptable" do
    patch :update, id: @temptable, temptable: { emp_number: @temptable.emp_number, f_name: @temptable.f_name }
    assert_redirected_to temptable_path(assigns(:temptable))
  end

  test "should destroy temptable" do
    assert_difference('Temptable.count', -1) do
      delete :destroy, id: @temptable
    end

    assert_redirected_to temptables_path
  end
end
