require 'spec_helper'

describe "introduces/new" do
  before(:each) do
    assign(:introduce, stub_model(Introduce,
      :title => "MyString",
      :summary => "MyText",
      :content => "MyText",
      :image => "MyString",
      :author => "MyString"
    ).as_new_record)
  end

  it "renders new introduce form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => introduces_path, :method => "post" do
      assert_select "input#introduce_title", :name => "introduce[title]"
      assert_select "textarea#introduce_summary", :name => "introduce[summary]"
      assert_select "textarea#introduce_content", :name => "introduce[content]"
      assert_select "input#introduce_image", :name => "introduce[image]"
      assert_select "input#introduce_author", :name => "introduce[author]"
    end
  end
end
