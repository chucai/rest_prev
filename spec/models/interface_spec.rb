require 'spec_helper'

describe Interface do

  describe "fetch result" do

    let(:interface) {
      FactoryGirl.create :interface
    }
    
    it "should fetch hash result" do
      Interface.stub(:parse_str_to_hash).with("{result:ok}").and_return { {:result => "ok"}   }
      url    = "#{interface.url}?id=1"
      method = "get"
      result = Interface.fetch_result(url, method)
      result.should == {
        :result => "ok"
      }
      result.is_a?(Hash).should be_true
    end

  end

  describe "parse" do 
    it "should return hash value" do
      str = "{result:ok}"
      reply = Interface.send(:parse_str_to_hash, str)
      reply.should == {
        'result' => 'ok'
      }
    end
  end


end
