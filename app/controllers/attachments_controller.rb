class AttachmentsController < ApplicationController
  
  before_action :set_attachment, only: [:show, :edit, :update, :destroy]

  respond_to :json

  #=== API_PIE
  api :GET, "/attachments/{id}", "Get attachment ( Image , Audio ) info by id"
  #=== API_PIE
  def show
    respond_with @attachment
  end

  # GET /attachments/new
  def new
    @attachment = Attachment.new
    respond_with @attachment
  end

  # GET /attachments/1/edit
  def edit
  end

  # POST /attachments
  # POST /attachments.json
  def create
    @attachment = Attachment.new(attachment_params)

    if @attachment.save
      respond_with @attachment
    else
      respond_with @attachment.errors
    end
  end

  # PATCH/PUT /attachments/1
  # PATCH/PUT /attachments/1.json
  def update
    if @attachment.update(attachment_params)
      respond_with @attachment
    else
      respond_with @attachment.errors
    end
  end

  # DELETE /attachments/1
  # DELETE /attachments/1.json
  def destroy
    @attachment.destroy
    respond_with { head :no_content }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attachment
      @attachment = Attachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attachment_params
      params.fetch(:attachment, {})
    end
end
