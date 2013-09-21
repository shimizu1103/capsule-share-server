require 'spec_helper'

describe "upload_files/show" do
  before(:each) do
    @upload_file = assign(:upload_file, stub_model(UploadFile,
      :user_id => 1,
      :file_name => "File Name",
      :owned_file => "Owned File"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/File Name/)
    rendered.should match(/Owned File/)
  end
end
