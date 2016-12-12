require 'test_helper'

class WordclassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wordclass = wordclasses(:one)
  end

  test "should get index" do
    get wordclasses_url
    assert_response :success
  end

  test "should get new" do
    get new_wordclass_url
    assert_response :success
  end

  test "should create wordclass" do
    assert_difference('Wordclass.count') do
      post wordclasses_url, params: { wordclass: { name: @wordclass.name } }
    end

    assert_redirected_to wordclass_url(Wordclass.last)
  end

  test "should show wordclass" do
    get wordclass_url(@wordclass)
    assert_response :success
  end

  test "should get edit" do
    get edit_wordclass_url(@wordclass)
    assert_response :success
  end

  test "should update wordclass" do
    patch wordclass_url(@wordclass), params: { wordclass: { name: @wordclass.name } }
    assert_redirected_to wordclass_url(@wordclass)
  end

  test "should destroy wordclass" do
    assert_difference('Wordclass.count', -1) do
      delete wordclass_url(@wordclass)
    end

    assert_redirected_to wordclasses_url
  end
end
