require_relative '../spec_helper'

describe "Auth" do
  let(:user) {User.create(name:'Steve Rogers',password:'password')}

  before do
    user
  end

  it 'should have a login' do
    get '/'
    expect(last_response.body).to include("login")
  end

  it 'should have a signup' do
    get '/'
    expect(last_response.body).to include("signup")
  end


  #ZM: Do Not Leave Commented out code in commits
  it 'should respond to signup' do
    post '/signup', params={ user:{name:'Steve Rogers',password:'password'}}
    expect(last_response).to be_redirect
    # p last_response
    follow_redirect!
    # p "*" * 40
    # p last_response.body
    # expect(last_response.body).to include("Steve Rogers")

  end
end