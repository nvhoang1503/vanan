require 'spec_helper'

describe "introduces/show" do
  before(:each) do
    @introduce = assign(:introduce, stub_model(Introduce,
      :title => "Title",
      :summary => "MyText",
      :content => "MyText",
      :image => "Image",
      :author => "Author"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Image/)
    rendered.should match(/Author/)
  end
end
