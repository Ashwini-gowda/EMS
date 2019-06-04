require 'test_helper'

class PickersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @picker = pickers(:one)
  end

  test "should get index" do
    get pickers_url
    assert_response :success
  end

  test "should get new" do
    get new_picker_url
    assert_response :success
  end

  test "should create picker" do
    assert_difference('Picker.count') do
      post pickers_url, params: { picker: { joining_date: @picker.joining_date } }
    end

    assert_redirected_to picker_url(Picker.last)
  end

  test "should show picker" do
    get picker_url(@picker)
    assert_response :success
  end

  test "should get edit" do
    get edit_picker_url(@picker)
    assert_response :success
  end

  test "should update picker" do
    patch picker_url(@picker), params: { picker: { joining_date: @picker.joining_date } }
    assert_redirected_to picker_url(@picker)
  end

  test "should destroy picker" do
    assert_difference('Picker.count', -1) do
      delete picker_url(@picker)
    end

    assert_redirected_to pickers_url
  end
end
