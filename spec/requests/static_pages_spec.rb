require 'rails_helper'

RSpec.describe "StaticPages", :type => :request do

  describe "GET /static_pages" do

    let(:base_title) {"Rails Tutorial"}

    describe "/home" do
      it "access to `/static_pages/` responds successfully with an HTTP 200 status code" do

        get "/"
        expect(response).to be_success
        expect(response).to have_http_status(200)

      end

      it "should have the title `Rails Tutorial | Home`" do
        visit root_path
        expect(page).to have_title("#{base_title} | Home")
      end

      it "should have the content `Home`" do
        visit root_path
        expect(page).to have_content('Home')
      end
    end

    describe "/help" do
      it "access to `/static_pages/help` responds successfully with an HTTP 200 status code" do
        get "/help"
        expect(response).to be_success
        expect(response).to have_http_status(200)
      end

      it "should have the title `Rails Tutorial | Help`" do
        visit help_path
        expect(page).to have_title("#{base_title} | Help")
      end

      it "should have the content `Help`" do
        visit help_path
        expect(page).to have_content('Help')
      end
    end

    describe "/about" do
      it "access to `/static_pages/about` responds successfully with an HTTP 200 status code" do
        get "/about"
        expect(response).to be_success
        expect(response).to have_http_status(200)
      end

      it "should have the title `Rails Tutorial | About me`" do
        visit about_path
        expect(page).to have_title("#{base_title} | About me")
      end

      it "should have the content `About me`" do
        visit about_path
        expect(page).to have_content('About me')
      end
    end

    describe "/contact" do
      it "access to `/static_pages/contact` responds successfully with an HTTP 200 status code" do
        get "/contact"
        expect(response).to be_success
        expect(response).to have_http_status(200)
      end

      it "should have the title `Rails Tutorial | Contact`" do
        visit contact_path
        expect(page).to have_title("#{base_title} | Contact")
      end

      it "should have the content `Contact`" do
        visit contact_path
        expect(page).to have_content('Contact')
      end
    end

  end

end
