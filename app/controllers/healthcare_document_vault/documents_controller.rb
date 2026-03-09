module HealthcareDocumentVault
  class DocumentsController < ApplicationController
    def index
      render json: Document.all
    end

    def show
      document = Document.find(params[:id])
      render json: document
    end

    def create
      document = Document.create!(document_params)
      render json: document
    end

    def destroy
      document = Document.find(params[:id])
      document.destroy
      head :no_content
    end

    private

    def document_params
      params.require(:document).permit(:title, :category, :expiry_date)
    end
  end
end
