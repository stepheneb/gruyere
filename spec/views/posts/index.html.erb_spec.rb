require 'spec_helper'

describe "/posts/index.html.erb" do
  include PostsHelper

  before(:each) do
    assigns[:posts] = [
      stub_model(Post,
        :title => "value for title",
        :body => "value for body",
        :published => false
      ),
      stub_model(Post,
        :title => "value for title",
        :body => "value for body",
        :published => false
      )
    ]
  end

  it "renders a list of posts" do
    render
    response.should have_tag(".expandable>.title", "value for title".to_s, 2)
    response.should have_tag(".expandable>.body", "value for body".to_s, 2)
    response.should have_tag("tr>td", false.to_s, 2)
  end
end
