class StoredData < ActiveRecord::Base
  attr_accessible :application_id, :key, :value
  belongs_to :client_application
end
