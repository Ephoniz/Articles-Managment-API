require 'rails_helper'

describe UserAuthenticator do
    context "when intialized with code" do
        let(:authenticator) { described_class.new(code: 'sample') }
        let(:authenticator_class) { UserAuthenticator::Oauth  }

        describe "#intialize" do
            it "should initialize proper authenticator" do
                expect(authenticator_class).to receive(:new).with('sample')
                authenticator
            end
        end
    end

    context "when initialized with login and password" do
        let(:authenticator) { described_class.new(login: 'wsmith', password: 'secret') }
        let(:authenticator_class) { UserAuthenticator::Standard  }

        describe "#intialize" do
            it "should initialize proper authenticator" do
                expect(authenticator_class).to receive(:new).with('wsmith', 'secret')
                authenticator
            end
        end
        
    end
end