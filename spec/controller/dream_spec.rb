require_relative '../spec_helper'


describe "Dream Spec" do
  let(:dream) {Dream.create(title:'This is a test.',content:'Testing dreams',category_id:1,user_id:1)}

  before do
    dream
  end

  it 'should respond to /dreams/:id' do
    get "/dreams/#{dream.id}"
    expect(last_response.status).to eq(200)
    expect(last_response.body).to include("This is a test")
  end
end