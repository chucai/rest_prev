class Interface < ActiveRecord::Base
  attr_accessible :method, :params, :returns, :url, :auth

  def returns_to_hash
    Interface.send(:parse_str_to_hash, self.returns)
  end

  
  class << self
    def fetch_result(*args)
      url    = args.first.split("?").first
      method = args.last
      result = Interface.where(:url => url, :method => method).first
      if result
        parse_str_to_hash(result.returns)
      else
        {:result => "No map route"}
      end

    end

    private
    def parse_str_to_hash(str)
      eval str.gsub(/:/, "=>").gsub(/(\w+)/) { |str| "'#{str}'" }
    end
  end

end
