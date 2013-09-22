require 'spec_helper'

describe "upload_files/new" do
  before(:each) do
    assign(:upload_file, stub_model(UploadFile,
      :user_id => 1,
      :file_name => "MyString",
      :owned_file => "MyString"
    ).as_new_record)
  end

  it "renders new upload_file form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", upload_files_path, "post" do
      assert_select "input#upload_file_user_id[name=?]", "upload_file[user_id]"
      assert_select "input#upload_file_file_name[name=?]", "upload_file[file_name]"
      assert_select "input#upload_file_owned_file[name=?]", "upload_file[owned_file]"
    end
  end
end
