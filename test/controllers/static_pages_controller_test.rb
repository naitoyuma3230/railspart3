require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  # rails testを実行した際,下に記載されたアクションを全て実行しエラーを教えてくれる
  # ex) static_pages/home getメソッドをhomeアクションに送信する
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
  end
  
  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

end
