class Idproof < ApplicationRecord
  belongs_to :merchant
  mount_uploader :document, DocumentUploader
  validates :document ,presence: true
  # enum :status, { pending: 2, accept: 1,reject: 0},_default: :pending
  # enum :status, { pending: 0, accept: 1},_default: :pending
end
