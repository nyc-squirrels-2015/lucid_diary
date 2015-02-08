describe "Index Spec" do

it 'should load an index page' do
    get '/'
    expect(last_response.status).to eq(200)
  end
end