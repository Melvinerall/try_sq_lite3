require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      :description => "MyText",
      :title => "MyText",
      :user => nil
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "textarea#post_description[name=?]", "post[description]"

      assert_select "textarea#post_title[name=?]", "post[title]"

      assert_select "input#post_user_id[name=?]", "post[user_id]"
    end
  end
end
