require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe UploadFilesController do

  # This should return the minimal set of attributes required to create a valid
  # UploadFile. As you add validations to UploadFile, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "user_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UploadFilesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all upload_files as @upload_files" do
      upload_file = UploadFile.create! valid_attributes
      get :index, {}, valid_session
      assigns(:upload_files).should eq([upload_file])
    end
  end

  describe "GET show" do
    it "assigns the requested upload_file as @upload_file" do
      upload_file = UploadFile.create! valid_attributes
      get :show, {:id => upload_file.to_param}, valid_session
      assigns(:upload_file).should eq(upload_file)
    end
  end

  describe "GET new" do
    it "assigns a new upload_file as @upload_file" do
      get :new, {}, valid_session
      assigns(:upload_file).should be_a_new(UploadFile)
    end
  end

  describe "GET edit" do
    it "assigns the requested upload_file as @upload_file" do
      upload_file = UploadFile.create! valid_attributes
      get :edit, {:id => upload_file.to_param}, valid_session
      assigns(:upload_file).should eq(upload_file)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new UploadFile" do
        expect {
          post :create, {:upload_file => valid_attributes}, valid_session
        }.to change(UploadFile, :count).by(1)
      end

      it "assigns a newly created upload_file as @upload_file" do
        post :create, {:upload_file => valid_attributes}, valid_session
        assigns(:upload_file).should be_a(UploadFile)
        assigns(:upload_file).should be_persisted
      end

      it "redirects to the created upload_file" do
        post :create, {:upload_file => valid_attributes}, valid_session
        response.should redirect_to(UploadFile.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved upload_file as @upload_file" do
        # Trigger the behavior that occurs when invalid params are submitted
        UploadFile.any_instance.stub(:save).and_return(false)
        post :create, {:upload_file => { "user_id" => "invalid value" }}, valid_session
        assigns(:upload_file).should be_a_new(UploadFile)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        UploadFile.any_instance.stub(:save).and_return(false)
        post :create, {:upload_file => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested upload_file" do
        upload_file = UploadFile.create! valid_attributes
        # Assuming there are no other upload_files in the database, this
        # specifies that the UploadFile created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        UploadFile.any_instance.should_receive(:update).with({ "user_id" => "1" })
        put :update, {:id => upload_file.to_param, :upload_file => { "user_id" => "1" }}, valid_session
      end

      it "assigns the requested upload_file as @upload_file" do
        upload_file = UploadFile.create! valid_attributes
        put :update, {:id => upload_file.to_param, :upload_file => valid_attributes}, valid_session
        assigns(:upload_file).should eq(upload_file)
      end

      it "redirects to the upload_file" do
        upload_file = UploadFile.create! valid_attributes
        put :update, {:id => upload_file.to_param, :upload_file => valid_attributes}, valid_session
        response.should redirect_to(upload_file)
      end
    end

    describe "with invalid params" do
      it "assigns the upload_file as @upload_file" do
        upload_file = UploadFile.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UploadFile.any_instance.stub(:save).and_return(false)
        put :update, {:id => upload_file.to_param, :upload_file => { "user_id" => "invalid value" }}, valid_session
        assigns(:upload_file).should eq(upload_file)
      end

      it "re-renders the 'edit' template" do
        upload_file = UploadFile.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UploadFile.any_instance.stub(:save).and_return(false)
        put :update, {:id => upload_file.to_param, :upload_file => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested upload_file" do
      upload_file = UploadFile.create! valid_attributes
      expect {
        delete :destroy, {:id => upload_file.to_param}, valid_session
      }.to change(UploadFile, :count).by(-1)
    end

    it "redirects to the upload_files list" do
      upload_file = UploadFile.create! valid_attributes
      delete :destroy, {:id => upload_file.to_param}, valid_session
      response.should redirect_to(upload_files_url)
    end
  end

end