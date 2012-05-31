require 'spec_helper'

describe "products/edit" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "MyString",
      :type => "",
      :summary => "MyString",
      :description => "MyText",
      :status => "MyString",
      :price => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path(@product), :method => "post" do
      assert_select "input#product_name", :name => "product[name]"
      assert_select "input#product_type", :name => "product[type]"
      assert_select "input#product_summary", :name => "product[summary]"
      assert_select "textarea#product_description", :name => "product[description]"
      assert_select "input#product_status", :name => "product[status]"
      assert_select "input#product_price", :name => "product[price]"
      assert_select "input#product_image", :name => "product[image]"
    end
  end
end
