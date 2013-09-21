require 'spec_helper'

describe "upload_files/index" do
  before(:each) do
    assign(:upload_files, [
      stub_model(UploadFile,
        :user_id => 1,
        :file_name => "File Name",
        :owned_file => "Owned File"
      ),
      stub_model(UploadFile,
        :user_id => 1,
        :file_name => "File Name",
        :owned_file => "Owned File"
      )
    ])
  end

  it "renders a list of upload_files" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "File Name".to_s, :count => 2
    assert_select "tr>td", :text => "Owned File".to_s, :count => 2
  end
end
