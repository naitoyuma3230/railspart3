require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  
    # 重複する文字を変数として定義
    def setup
      @base_title = "Ruby on Rails Tutorial Sample App"
    end
  
  # rails testを実行した際,下に記載されたアクションを全て実行しエラーを教えてくれる
  # ex) static_pages/home getメソッドをhomeアクションに送信する
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    
    # HTMLの内容を検索<title>の内容に"Home | Ruby on ~"が含まれるかテスト
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end
  
  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response:success
  end

end
