Rails.application.routes.draw do
  mount HealthcareDocumentVault::Engine => "/vault"
end
