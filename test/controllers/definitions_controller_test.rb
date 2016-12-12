require 'test_helper'

class DefinitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @definition = definitions(:one)
  end

  test "should get index" do
    get definitions_url
    assert_response :success
  end

  test "should get new" do
    get new_definition_url
    assert_response :success
  end

  test "should create definition" do
    assert_difference('Definition.count') do
      post definitions_url, params: { definition: { body: @definition.body, example: @definition.example } }
    end

    assert_redirected_to definition_url(Definition.last)
  end

  test "should show definition" do
    get definition_url(@definition)
    assert_response :success
  end

  test "should get edit" do
    get edit_definition_url(@definition)
    assert_response :success
  end

  test "should update definition" do
    patch definition_url(@definition), params: { definition: { body: @definition.body, example: @definition.example } }
    assert_redirected_to definition_url(@definition)
  end

  test "should destroy definition" do
    assert_difference('Definition.count', -1) do
      delete definition_url(@definition)
    end

    assert_redirected_to definitions_url
  end
end
