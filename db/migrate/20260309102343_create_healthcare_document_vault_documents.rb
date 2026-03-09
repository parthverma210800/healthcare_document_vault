class CreateHealthcareDocumentVaultDocuments < ActiveRecord::Migration[8.1]
  def change
    create_table :healthcare_document_vault_documents do |t|
      t.string :title
      t.string :category
      t.string :owner_type
      t.bigint :owner_id
      t.date :expiry_date
      t.string :status
      t.string :document_number
      t.text :notes

      t.timestamps
    end
  end
end
