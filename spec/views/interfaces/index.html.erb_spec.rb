require 'spec_helper'

describe "interfaces/index" do
  before(:each) do
    assign(:interfaces, [
      stub_model(Interface,
        :url => "Url",
        :method => "Method",
        :params => "Params",
        :returns => "Returns"
      ),
      stub_model(Interface,
        :url => "Url",
        :method => "Method",
        :params => "Params",
        :returns => "Returns"
      )
    ])
  end

  it "renders a list of interfaces" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Method".to_s, :count => 2
    assert_select "tr>td", :text => "Params".to_s, :count => 2
    assert_select "tr>td", :text => "Returns".to_s, :count => 2
  end
end
