module HealthcareDocumentVault
  class Document < ApplicationRecord
    self.table_name = "healthcare_document_vault_documents"

    belongs_to :owner, polymorphic: true, optional: true

    has_one_attached :file

    has_many :document_access_logs

    encrypts :document_number
    encrypts :notes

    validates :title, presence: true
  end
end
