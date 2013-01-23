class ClientApplication < ActiveRecord::Base
  attr_accessible :token, :name, :user_id
  before_create :generate_token

  belongs_to :user
  has_many :stored_datas, :dependent => :destroy

  validates :name,:user_id, :presence => true

private

  def generate_token
    begin
      self.token = SecureRandom.hex
    end while self.class.exists?(token: token)
  end
end
