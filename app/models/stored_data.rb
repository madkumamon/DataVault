class StoredData < ActiveRecord::Base
  attr_accessible :client_application_id, :key, :value
  belongs_to :client_application

  validates :key, :value, :client_application_id, :presence => true
end
