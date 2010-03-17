require 'spec_helper'

describe "/posts/show.html.erb" do
  include PostsHelper
  before(:each) do
    assigns[:post] = @post = stub_model(Post,
      :title => "value for title",
      :body => "value for body",
      :published => false
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ title/)
    response.should have_text(/value\ for\ body/)
    response.should have_text(/false/)
  end
end
