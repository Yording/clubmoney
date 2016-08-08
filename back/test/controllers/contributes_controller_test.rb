require 'test_helper'

class ContributesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contribute = contributes(:one)
  end

  test "should get index" do
    get contributes_url
    assert_response :success
  end

  test "should get new" do
    get new_contribute_url
    assert_response :success
  end

  test "should create contribute" do
    assert_difference('Contribute.count') do
      post contributes_url, params: { contribute: { debt: @contribute.debt, event_id: @contribute.event_id, fine_id: @contribute.fine_id, quota: @contribute.quota, snack: @contribute.snack, user_id: @contribute.user_id } }
    end

    assert_redirected_to contribute_url(Contribute.last)
  end

  test "should show contribute" do
    get contribute_url(@contribute)
    assert_response :success
  end

  test "should get edit" do
    get edit_contribute_url(@contribute)
    assert_response :success
  end

  test "should update contribute" do
    patch contribute_url(@contribute), params: { contribute: { debt: @contribute.debt, event_id: @contribute.event_id, fine_id: @contribute.fine_id, quota: @contribute.quota, snack: @contribute.snack, user_id: @contribute.user_id } }
    assert_redirected_to contribute_url(@contribute)
  end

  test "should destroy contribute" do
    assert_difference('Contribute.count', -1) do
      delete contribute_url(@contribute)
    end

    assert_redirected_to contributes_url
  end
end
