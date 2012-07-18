require 'spec_helper'

describe OmniAuth::Strategies::Afterclassroom do
  subject do
    OmniAuth::Strategies::Afterclassroom.new({})
  end

  context "client options" do
    it 'should have correct name' do
      subject.options.name.should eq("afterclassroom")
    end

    it 'should have correct site' do
      subject.options.client_options.site.should eq('https://api.afterclassroom.com')
    end

    it 'should have correct authorize url' do
      subject.options.client_options.authorize_path.should eq('/oauth/authenticate')
    end
  end
end
