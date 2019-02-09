require 'test_helper'

class UsersProfileTest < ActionDispatch::IntegrationTest
  include ApplicationHelper

  def setup
    @user = users(:michael)
    @other_user = users(:archer)
  end

  test "profile display" do
    log_in_as(@user)
    get user_path(@user)
    assert_template 'users/show'
    assert_select 'h1', text: @user.name
    assert_select 'p',  text: @user.profile
    assert_select 'div.icon'
    assert_select "a[href=?]", edit_user_path(@user)
    assert_match @user.microposts.count.to_s, response.body
    assert_select 'div.pagination'
    @user.microposts.paginate(page: 1).each do |micropost|
      assert_match micropost.content, response.body
    end
  end
  
  test "not current user profile display" do
    log_in_as(@user)
    get user_path(@other_user)
    assert_template 'users/show'
    assert_select 'h1', text: @other_user.name
    assert_select 'p',  text: @other_user.profile
    assert_select 'div.icon'
    assert_select "a[href=?]", edit_user_path(@other_user), count:0
    assert_match @other_user.microposts.count.to_s, response.body
    assert_select 'div.pagination'
    @other_user.microposts.paginate(page: 1).each do |micropost|
      assert_match micropost.content, response.body
    end
  end
end