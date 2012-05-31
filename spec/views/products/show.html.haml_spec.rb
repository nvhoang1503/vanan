require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "Name",
      :type => "Type",
      :summary => "Summary",
      :description => "MyText",
      :status => "Status",
      :price => "Price",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Type/)
    rendered.should match(/Summary/)
    rendered.should match(/MyText/)
    rendered.should match(/Status/)
    rendered.should match(/Price/)
    rendered.should match(/Image/)
  end
end
