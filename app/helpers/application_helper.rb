module ApplicationHelper

  # タイトル表記についての関数
  # 引数にViewの:titleを指定し空ならばbase_titleを、page_titleとbase_titleを返す
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
