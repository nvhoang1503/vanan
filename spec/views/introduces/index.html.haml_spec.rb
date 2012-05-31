require 'spec_helper'

describe "introduces/index" do
  before(:each) do
    assign(:introduces, [
      stub_model(Introduce,
        :title => "Title",
        :summary => "MyText",
        :content => "MyText",
        :image => "Image",
        :author => "Author"
      ),
      stub_model(Introduce,
        :title => "Title",
        :summary => "MyText",
        :content => "MyText",
        :image => "Image",
        :author => "Author"
      )
    ])
  end

  it "renders a list of introduces" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
  end
end
