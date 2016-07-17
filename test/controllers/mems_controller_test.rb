require 'test_helper'

class MemsControllerTest < ActionController::TestCase
  setup do
    @mem = mems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mem" do
    assert_difference('Mem.count') do
      post :create, mem: { description: @mem.description, name: @mem.name, user_id: @mem.user_id }
    end

    assert_redirected_to mem_path(assigns(:mem))
  end

  test "should show mem" do
    get :show, id: @mem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mem
    assert_response :success
  end

  test "should update mem" do
    patch :update, id: @mem, mem: { description: @mem.description, name: @mem.name, user_id: @mem.user_id }
    assert_redirected_to mem_path(assigns(:mem))
  end

  test "should destroy mem" do
    assert_difference('Mem.count', -1) do
      delete :destroy, id: @mem
    end

    assert_redirected_to mems_path
  end
end
