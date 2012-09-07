require 'spec_helper'

describe "interfaces/new" do
  before(:each) do
    assign(:interface, stub_model(Interface,
      :url => "MyString",
      :method => "MyString",
      :params => "MyString",
      :returns => "MyString"
    ).as_new_record)
  end

  it "renders new interface form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => interfaces_path, :method => "post" do
      assert_select "input#interface_url", :name => "interface[url]"
      assert_select "input#interface_method", :name => "interface[method]"
      assert_select "input#interface_params", :name => "interface[params]"
      assert_select "input#interface_returns", :name => "interface[returns]"
    end
  end
end
