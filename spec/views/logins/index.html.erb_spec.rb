require 'rails_helper'

RSpec.describe "logins/index", type: :view do
  before(:each) do
    assign(:logins, [
      Login.create!(
        :username => "Username",
        :email => "Email",
        :password => "Password",
        :conformpassword => "Conformpassword",
        :mobilenumber => "Mobilenumber"
      ),
      Login.create!(
        :username => "Username",
        :email => "Email",
        :password => "Password",
        :conformpassword => "Conformpassword",
        :mobilenumber => "Mobilenumber"
      ),
      Login.create!(
        :username => "Username",
        :email => "Email",
        :password => "Password",
        :conformpassword => "Conformpassword",
        :mobilenumber => "Mobilenumber"
      )
    ])
  end

  it "renders a list of logins" do
    render
    assert_select "tr>td", :text => "Username".to_s, :count => 3
    assert_select "tr>td", :text => "Email".to_s, :count => 3
    assert_select "tr>td", :text => "Password".to_s, :count => 3
    assert_select "tr>td", :text => "Conformpassword".to_s, :count => 3
    assert_select "tr>td", :text => "Mobilenumber".to_s, :count => 3
  end
end
