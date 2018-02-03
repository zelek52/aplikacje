require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { address: @user.address, email: @user.email, first_name: @user.first_name, joined_date: @user.joined_date, last_name: @user.last_name, last_visit: @user.last_visit, login: @user.login, name_public: @user.name_public, password: @user.password, phone_nr: @user.phone_nr, user_id: @user.user_id } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { address: @user.address, email: @user.email, first_name: @user.first_name, joined_date: @user.joined_date, last_name: @user.last_name, last_visit: @user.last_visit, login: @user.login, name_public: @user.name_public, password: @user.password, phone_nr: @user.phone_nr, user_id: @user.user_id } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
