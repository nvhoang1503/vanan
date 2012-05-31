require 'spec_helper'

describe "contacts/show" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :name => "Name",
      :address => "Address",
      :phone => "Phone",
      :email => "Email",
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Address/)
    rendered.should match(/Phone/)
    rendered.should match(/Email/)
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
