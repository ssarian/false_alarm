require 'test_helper'

class CitationTransControllerTest < ActionController::TestCase
  setup do
    @citation_tran = citation_trans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:citation_trans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create citation_tran" do
    assert_difference('CitationTran.count') do
      post :create, citation_tran: { fkActionKey: @citation_tran.fkActionKey, fkCitationKey: @citation_tran.fkCitationKey, fkTemplateKey: @citation_tran.fkTemplateKey, fkUserKey: @citation_tran.fkUserKey, transDateTime: @citation_tran.transDateTime }
    end

    assert_redirected_to citation_tran_path(assigns(:citation_tran))
  end

  test "should show citation_tran" do
    get :show, id: @citation_tran
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @citation_tran
    assert_response :success
  end

  test "should update citation_tran" do
    patch :update, id: @citation_tran, citation_tran: { fkActionKey: @citation_tran.fkActionKey, fkCitationKey: @citation_tran.fkCitationKey, fkTemplateKey: @citation_tran.fkTemplateKey, fkUserKey: @citation_tran.fkUserKey, transDateTime: @citation_tran.transDateTime }
    assert_redirected_to citation_tran_path(assigns(:citation_tran))
  end

  test "should destroy citation_tran" do
    assert_difference('CitationTran.count', -1) do
      delete :destroy, id: @citation_tran
    end

    assert_redirected_to citation_trans_path
  end
end
