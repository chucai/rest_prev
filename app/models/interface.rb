class Interface < ActiveRecord::Base
  attr_accessible :method, :params, :returns, :url, :auth
end
