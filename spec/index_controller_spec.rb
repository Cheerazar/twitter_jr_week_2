require_relative 'spec_helper'

describe "landing page controller" do
  describe "GET /" do
    it "renders a successful status" do
      get '/'
      expect(last_response.status).to eq(200)
    end
  end

#   describe "POST /profiles" do
#     it "lets a user log in" do
#       # user = User.create()
#       response.should redirect_to "/profiles/:id"
#     end
#   end
# end




# user = User.create(first_name: "Brooks",
#                    last_name: "brooks",
#                    username: "brooks"
#                    password: "Brooks",
#                    email: "brooks")
