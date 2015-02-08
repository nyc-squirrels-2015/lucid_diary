require_relative '../spec_helper'


describe 'User Spec' do
  let(:user) {User.create(name:'Steve Rogers',password:'password')}

  before do
    user
  end

  it 'should respond to /users/:id' do
    get "/users/#{user.id}"
    expect(last_response.status).to eq(200)
    expect(last_response.body).to include('Steve Rogers')
    expect(last_response.body).to include('login')
  end
end