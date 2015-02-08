require_relative '../spec_helper'

describe "Auth" do
  it 'should have a login' do
    get '/'
    expect(last_response.body).to include("login")
  end

  it 'should have a signup' do
    get '/'
    expect(last_response.body).to include("signup")
  end
end