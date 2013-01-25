class StoredData < ActiveRecord::Base
  attr_accessible :application_id, :key, :value
  belongs_to :application

  validates :key, :value, :application_id, :presence => true
end
