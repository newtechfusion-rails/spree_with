require 'spec_helper'

describe SpreeController do

  describe "GET 'order'" do
    it "returns http success" do
      get 'order'
      response.should be_success
    end
  end

end
