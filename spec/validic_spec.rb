# encoding: utf-8
require 'spec_helper'

describe Validic do

  let(:client) { Validic::Client.new }

  context "configure defaults" do

    it "uses default API URL" do
      # client.api_url.should eq 'https://api.validic.com'
      client.api_url.should eq 'http://api.validic.dev' # Development URL for local testing
    end

    it "uses default API VERSION" do
      client.api_version.should eq 'v1'
    end

  end

  context "handles custom configuration" do
    let(:new_client) { Validic::Client.new(api_url: 'https://api.validic.net', api_version: 'v2')}#, access_token: 'MYTOKEN')}

    it "::Client API_URL configuration" do
      new_client.api_url.should eq 'https://api.validic.net'
    end

    # it "::Client ACCESS_TOKEN configuration" do
    #   new_client.access_token.should eq 'MYTOKEN'
    # end

    it "::Client API_VERSION configuration" do
      new_client.api_version.should eq 'v2'
    end

  end

end
