require_relative '../spec_helper'

describe "Auth" do
  it 'should load an index page' do
    get '/'
    expect(last_response.status).to eq(200)
  end

  it 'should have a login' do
    get '/'
    expect(last_response.body).to include("login")
  end
end