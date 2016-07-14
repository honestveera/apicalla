require 'rails_helper'

RSpec.describe "logins/show", type: :view do
  before(:each) do
    @login = assign(:login, Login.create!(
      :username => "Username",
      :email => "Email",
      :password => "Password",
      :conformpassword => "Conformpassword",
      :mobilenumber => "Mobilenumber"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/Conformpassword/)
    expect(rendered).to match(/Mobilenumber/)
  end
end
