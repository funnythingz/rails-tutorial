require 'rails_helper'

RSpec.describe "StaticPages", :type => :request do

  describe "GET /static_pages" do

    it "access to `/static_pages/home` responds successfully with an HTTP 200 status code" do

      get "/static_pages/home"
      expect(response).to be_success
      expect(response).to have_http_status(200)

    end

    it "access to `/static_pages/help` responds successfully with an HTTP 200 status code" do
      get "/static_pages/help"
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    describe "/home" do
      it "should have the content `Sample App`" do
        visit "/static_pages/home"
        expect(page).to have_content('Sample App')
      end
    end

  end

end
