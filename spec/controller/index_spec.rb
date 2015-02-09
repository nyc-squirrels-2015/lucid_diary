describe "Index Spec" do

it 'should load an index page' do
    get '/'
    expect(last_response.status).to eq(200)
    expect(last_response.body).to include("Lucidity")
  end
end