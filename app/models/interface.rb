# -*- encoding: utf-8 -*- 
class Interface < ActiveRecord::Base
  attr_accessible :method, :params, :returns, :url, :auth, :title

  def returns_to_hash
    Interface.send(:parse_str_to_hash, self.returns)
  end
  
  def auth_value
    (auth == true) ? "是"  : "否"
  end

  before_save :change_to_json
  def change_to_json
    self.returns.gsub!(/"/, "\"\/").gsub!(/\r/,'').gsub!(/\//,'')
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

    def select_methods_tag
      [
        ['GET', 'get'],
        ['POST', 'post'],
        ['PUT', 'put'],
        ['DELETE', 'delete']
      ]
    end


    private
    def parse_str_to_hash(str)
      begin 
        JSON.parse str.gsub(/\r/,'').gsub(/\n/,'').gsub(/\//,'')
      rescue Excepiton => e
        Rails.logger.info("error message: #{e}")
      ensure
        {:result => "json parse error!"}
      end
    end
  end

end
