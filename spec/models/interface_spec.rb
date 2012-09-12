require 'spec_helper'

describe Interface do

  describe "fetch result" do

    let(:interface) {
      FactoryGirl.create :interface
    }
    
    it "should fetch hash result" do
      Interface.stub(:parse_str_to_hash).with("{\"result\":\"ok\"}").and_return { {:result => "ok"}   }
      url    = "#{interface.url}?id=1"
      method = "get"
      result = Interface.fetch_result(url, method)
      result.should == {
        :result => "ok"
      }
      result.is_a?(Hash).should be_true
    end


    it "should result and status" do
      result, status = Interface.fetch_result_and_status(interface.url, interface.method)
      result.should == {
        "result" => "ok"
      }
      status.should == 200
    end
  end

  describe "parse" do 
    it "should return hash value" do
      str = "{\"result\":\"ok\"}"
      reply = Interface.send(:parse_str_to_hash, str)
      reply.should == {
        'result' => 'ok'
      }
    end

    it "url" do
      str = "{\"url\": \"http://baidu.com\"}"
      Interface.send(:parse_str_to_hash, str).should == {
        'url' => "http://baidu.com"
      }
    end

    it "deep hash" do
      str = "{\"web\":{\"url\":\"http://www.baidu.com\",\"token\":\"yes\"},\"username\":\"bill\"}"
      Interface.send(:parse_str_to_hash, str).should == {
       'web' => {
          'url' => 'http://www.baidu.com',
          'token' => 'yes'
        },
        'username' => "bill"
      }
    end
  end


end
