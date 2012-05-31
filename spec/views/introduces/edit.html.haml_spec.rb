require 'spec_helper'

describe "introduces/edit" do
  before(:each) do
    @introduce = assign(:introduce, stub_model(Introduce,
      :title => "MyString",
      :summary => "MyText",
      :content => "MyText",
      :image => "MyString",
      :author => "MyString"
    ))
  end

  it "renders the edit introduce form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => introduces_path(@introduce), :method => "post" do
      assert_select "input#introduce_title", :name => "introduce[title]"
      assert_select "textarea#introduce_summary", :name => "introduce[summary]"
      assert_select "textarea#introduce_content", :name => "introduce[content]"
      assert_select "input#introduce_image", :name => "introduce[image]"
      assert_select "input#introduce_author", :name => "introduce[author]"
    end
  end
end
