require 'spec_helper'

describe SharedController do

  describe "GET '_nav'" do
    it "returns http success" do
      get '_nav'
      response.should be_success
    end
  end

end
