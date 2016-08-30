require 'test_helper'

class AllsControllerTest < ActionController::TestCase
  setup do
    @all = alls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create all" do
    assert_difference('All.count') do
      post :create, all: { eighteen: @all.eighteen, eleven: @all.eleven, fifteen: @all.fifteen, five: @all.five, four: @all.four, fourteen: @all.fourteen, listing_id: @all.listing_id, nine: @all.nine, nineteen: @all.nineteen, one: @all.one, seven: @all.seven, seventeen: @all.seventeen, six: @all.six, sixteen: @all.sixteen, ten: @all.ten, thirteen: @all.thirteen, three: @all.three, twelve: @all.twelve, two: @all.two }
    end

    assert_redirected_to all_path(assigns(:all))
  end

  test "should show all" do
    get :show, id: @all
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @all
    assert_response :success
  end

  test "should update all" do
    patch :update, id: @all, all: { eighteen: @all.eighteen, eleven: @all.eleven, fifteen: @all.fifteen, five: @all.five, four: @all.four, fourteen: @all.fourteen, listing_id: @all.listing_id, nine: @all.nine, nineteen: @all.nineteen, one: @all.one, seven: @all.seven, seventeen: @all.seventeen, six: @all.six, sixteen: @all.sixteen, ten: @all.ten, thirteen: @all.thirteen, three: @all.three, twelve: @all.twelve, two: @all.two }
    assert_redirected_to all_path(assigns(:all))
  end

  test "should destroy all" do
    assert_difference('All.count', -1) do
      delete :destroy, id: @all
    end

    assert_redirected_to alls_path
  end
end
