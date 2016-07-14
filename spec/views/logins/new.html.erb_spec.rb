require 'rails_helper'

RSpec.describe "logins/new", type: :view do
  before(:each) do
    assign(:login, Login.new(
      :username => "MyString",
      :email => "MyString",
      :password => "MyString",
      :conformpassword => "MyString",
      :mobilenumber => "MyString"
    ))
  end

  it "renders new login form" do
    render

     assert_select "form[action=?][method=?]", logins_path, "post" do

      assert_select "input#login_username[name=?]", "login[username]"

      assert_select "input#login_email[name=?]", "login[email]"

      assert_select "input#login_password[name=?]", "login[password]"

      assert_select "input#login_conformpassword[name=?]", "login[conformpassword]"

      assert_select "input#login_mobilenumber[name=?]", "login[mobilenumber]"
    end
  end
end
