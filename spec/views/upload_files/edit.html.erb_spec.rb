require 'spec_helper'

describe "upload_files/edit" do
  before(:each) do
    @upload_file = assign(:upload_file, stub_model(UploadFile,
      :user_id => 1,
      :file_name => "MyString",
      :owned_file => "MyString"
    ))
  end

  it "renders the edit upload_file form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", upload_file_path(@upload_file), "post" do
      assert_select "input#upload_file_user_id[name=?]", "upload_file[user_id]"
      assert_select "input#upload_file_file_name[name=?]", "upload_file[file_name]"
      assert_select "input#upload_file_owned_file[name=?]", "upload_file[owned_file]"
    end
  end
end
