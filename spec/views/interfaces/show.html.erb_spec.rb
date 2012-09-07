require 'spec_helper'

describe "interfaces/show" do
  before(:each) do
    @interface = assign(:interface, stub_model(Interface,
      :url => "Url",
      :method => "Method",
      :params => "Params",
      :returns => "Returns"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    rendered.should match(/Method/)
    rendered.should match(/Params/)
    rendered.should match(/Returns/)
  end
end
