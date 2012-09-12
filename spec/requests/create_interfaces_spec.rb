# -*- encoding: utf-8 -*- 
require 'spec_helper'

describe "CreateInterfaces" do
  describe "GET " do

    it "should return 400 ok" do

      visit root_url
      click_link "新建接口"
      
      fill_in "URL",  :with =>  "/api/get_token.json"
      #fill_in "方法", :with => "GET"
      select("GET", :from => "方法")
      fill_in "参数", :with => "id"
      fill_in "返回值", :with => '{"result":"fail"}'
      fill_in "状态码", :with => '400'
      check "需要认证"
      click_button "提交"

      url = "/api/get_token.json?id=1"
      method = "get"
      Interface.stub(:fetch_result_and_status).with(url, method).and_return {
        [{:result => "ok"}, 400]
      }
      get url
      response.status.should == 400
      response.body.should == {:result => "ok"}.to_json
    end

    it "should return 200 ok" do
      visit root_url
      click_link "新建接口"
      

      page.should have_selector("form")

      #填写表单
      fill_in "URL",  :with =>  "/api/get_token.json"
      #fill_in "方法", :with => "GET"
      select("GET", :from => "方法")
      fill_in "参数", :with => "id"
      fill_in "返回值", :with => '{"result":"ok"}'
      check "需要认证"
      click_button "提交"

      page.should have_content("保存成功")


      #visit "/api/get_token.json?id=1"
      #page.body.should == "{result:ok}"
      url = "/api/get_token.json?id=1"
      method = "get"
      Interface.stub(:fetch_result_and_status).with(url, method).and_return {
        [{:result => "ok"}, 200]
      }
      get url
      response.status.should == 200
      response.body.should == {:result => "ok"}.to_json
    end
  end
end
