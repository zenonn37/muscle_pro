require 'test_helper'

class StaffAccountsControllerTest < ActionController::TestCase
  setup do
    @staff_account = staff_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staff_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staff_account" do
    assert_difference('StaffAccount.count') do
      post :create, staff_account: { hours: @staff_account.hours, location: @staff_account.location, production: @staff_account.production, salary: @staff_account.salary, staffid: @staff_account.staffid, trainer_id: @staff_account.trainer_id }
    end

    assert_redirected_to staff_account_path(assigns(:staff_account))
  end

  test "should show staff_account" do
    get :show, id: @staff_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staff_account
    assert_response :success
  end

  test "should update staff_account" do
    patch :update, id: @staff_account, staff_account: { hours: @staff_account.hours, location: @staff_account.location, production: @staff_account.production, salary: @staff_account.salary, staffid: @staff_account.staffid, trainer_id: @staff_account.trainer_id }
    assert_redirected_to staff_account_path(assigns(:staff_account))
  end

  test "should destroy staff_account" do
    assert_difference('StaffAccount.count', -1) do
      delete :destroy, id: @staff_account
    end

    assert_redirected_to staff_accounts_path
  end
end
