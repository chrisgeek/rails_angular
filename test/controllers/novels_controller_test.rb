require 'test_helper'

class NovelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @novel = novels(:one)
  end

  test "should get index" do
    get novels_url, as: :json
    assert_response :success
  end

  test "should create novel" do
    assert_difference('Novel.count') do
      post novels_url, params: { novel: { title: @novel.title, user_id: @novel.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show novel" do
    get novel_url(@novel), as: :json
    assert_response :success
  end

  test "should update novel" do
    patch novel_url(@novel), params: { novel: { title: @novel.title, user_id: @novel.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy novel" do
    assert_difference('Novel.count', -1) do
      delete novel_url(@novel), as: :json
    end

    assert_response 204
  end
end
