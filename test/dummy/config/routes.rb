Rails.application.routes.draw do
  mount HealthcareDocumentVault::Engine => "/healthcare_document_vault"
end
