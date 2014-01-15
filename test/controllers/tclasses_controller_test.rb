require 'test_helper'

class TclassesControllerTest < ActionController::TestCase
  setup do
    @tclass = tclasses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tclasses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tclass" do
    assert_difference('Tclass.count') do
      post :create, tclass: { dclass: @tclass.dclass, duration: @tclass.duration, level: @tclass.level, mclass: @tclass.mclass, name: @tclass.name, timeclass: @tclass.timeclass }
    end

    assert_redirected_to tclass_path(assigns(:tclass))
  end

  test "should show tclass" do
    get :show, id: @tclass
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tclass
    assert_response :success
  end

  test "should update tclass" do
    patch :update, id: @tclass, tclass: { dclass: @tclass.dclass, duration: @tclass.duration, level: @tclass.level, mclass: @tclass.mclass, name: @tclass.name, timeclass: @tclass.timeclass }
    assert_redirected_to tclass_path(assigns(:tclass))
  end

  test "should destroy tclass" do
    assert_difference('Tclass.count', -1) do
      delete :destroy, id: @tclass
    end

    assert_redirected_to tclasses_path
  end
end
