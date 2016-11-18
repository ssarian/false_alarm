require 'test_helper'

class AccountOwnersControllerTest < ActionController::TestCase
  setup do
    @account_owner = account_owners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:account_owners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account_owner" do
    assert_difference('AccountOwner.count') do
      post :create, account_owner: { acctNum: @account_owner.acctNum, address: @account_owner.address, cellphone: @account_owner.cellphone, city: @account_owner.city, email: @account_owner.email, firstName: @account_owner.firstName, homePhone: @account_owner.homePhone, lastName: @account_owner.lastName, middleName: @account_owner.middleName, state: @account_owner.state, workPhone: @account_owner.workPhone, zip: @account_owner.zip }
    end

    assert_redirected_to account_owner_path(assigns(:account_owner))
  end

  test "should show account_owner" do
    get :show, id: @account_owner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @account_owner
    assert_response :success
  end

  test "should update account_owner" do
    patch :update, id: @account_owner, account_owner: { acctNum: @account_owner.acctNum, address: @account_owner.address, cellphone: @account_owner.cellphone, city: @account_owner.city, email: @account_owner.email, firstName: @account_owner.firstName, homePhone: @account_owner.homePhone, lastName: @account_owner.lastName, middleName: @account_owner.middleName, state: @account_owner.state, workPhone: @account_owner.workPhone, zip: @account_owner.zip }
    assert_redirected_to account_owner_path(assigns(:account_owner))
  end

  test "should destroy account_owner" do
    assert_difference('AccountOwner.count', -1) do
      delete :destroy, id: @account_owner
    end

    assert_redirected_to account_owners_path
  end
end
