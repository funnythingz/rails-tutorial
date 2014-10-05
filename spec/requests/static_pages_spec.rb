require 'rails_helper'

RSpec.describe "StaticPages", :type => :request do

  describe "GET /" do

    let(:base_title) {"Rails Tutorial"}

    describe "/" do
      subject {response}
      it "access to `/` responds successfully with an HTTP 200 status code" do
        get "/"
        should be_success
        should have_http_status(200)
      end

      describe "have contents" do
        before {visit root_path}
        subject {page}

        it "should have the title `Rails Tutorial | Home`" do
          should have_title("#{base_title} | Home")
        end

        it "should have the content `Home`" do
          should have_content('Home')
        end
      end
    end

    describe "/help" do
      subject {response}
      it "access to `/help` responds successfully with an HTTP 200 status code" do
        get "/help"
        should be_success
        should have_http_status(200)
      end

      describe "have contents" do
        before {visit help_path}
        subject {page}

        it "should have the title `Rails Tutorial | Help`" do
          should have_title("#{base_title} | Help")
        end

        it "should have the content `Help`" do
          should have_content('Help')
        end
      end
    end

    describe "/about" do
      subject {response}
      it "access to `/about` responds successfully with an HTTP 200 status code" do
        get "/about"
        should be_success
        should have_http_status(200)
      end

      describe "have contents" do
        before {visit about_path}
        subject {page}

        it "should have the title `Rails Tutorial | About me`" do
          should have_title("#{base_title} | About me")
        end

        it "should have the content `About me`" do
          should have_content('About me')
        end
      end
    end

    describe "/contact" do
      subject {response}
      it "access to `/contact` responds successfully with an HTTP 200 status code" do
        get "/contact"
        should be_success
        should have_http_status(200)
      end

      describe "have contents" do
        before {visit contact_path}
        subject {page}

        it "should have the title `Rails Tutorial | Contact`" do
          should have_title("#{base_title} | Contact")
        end

        it "should have the content `Contact`" do
          should have_content('Contact')
        end
      end
    end

  end

end
