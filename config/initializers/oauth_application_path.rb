module Links
  def self.included base
    base.belongs_to :user
    base.has_many :stored_datas, :dependent => :destroy
  end
end

Doorkeeper::Application.send(:include, Links)