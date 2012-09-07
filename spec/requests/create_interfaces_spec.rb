# -*- encoding: utf-8 -*- 
require 'spec_helper'

describe "CreateInterfaces" do
  describe "GET root_url" do
    it "visit root_url" do
      visit root_url
      click_link "增加"
      

      page.should have_selector("form")

      #填写表单
      fill_in "URL",  :with =>  "/api/get_token.json"
      fill_in "方法", :with => "GET"
      fill_in "参数", :with => "id"
      fill_in "返回值", :with => "{result:ok}"
      check "需要认证"
      click_button "提交"

      page.should have_content("保存成功")
    end
  end
end
