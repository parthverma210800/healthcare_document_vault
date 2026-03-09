module HealthcareDocumentVault
  class DocumentsController < HealthcareDocumentVault::ApplicationController
    def index
      @documents = Document.all
    end

    def show
      @document = Document.find(params[:id])
    end

    def new
      @document = Document.new
    end

    def create
      @document = Document.new(document_params)

      if @document.save
        redirect_to document_path(@document)
      else
        render :new
      end
    end

    private

    def document_params
      params.require(:document).permit(:title, :category, :uploaded_by, :expires_at, :file)
    end
  end
end
