require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        username: "Username",
        email: "Email",
        password: "Password"
      ),
      User.create!(
        username: "Username",
        email: "Email",
        password: "Password"
      )
    ])
  end


end
