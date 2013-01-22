class ClientApplication < ActiveRecord::Base
  attr_accessible :access_token, :name, :user_id
  before_create :generate_access_token

  belongs_to :user
  has_many :stored_datas, :dependent => :destroy

  private

  def generate_access_token
    begin
      self.access_token = SecureRandom.hex
    end while self.class.exists?(access_token: access_token)
  end

  validates :name,:user_id, :presence => true
end
