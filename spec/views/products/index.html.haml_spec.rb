require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :name => "Name",
        :type => "Type",
        :summary => "Summary",
        :description => "MyText",
        :status => "Status",
        :price => "Price",
        :image => "Image"
      ),
      stub_model(Product,
        :name => "Name",
        :type => "Type",
        :summary => "Summary",
        :description => "MyText",
        :status => "Status",
        :price => "Price",
        :image => "Image"
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Summary".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
