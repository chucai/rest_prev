class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :init_interfaces

  def init_interfaces
    @inters = Interface.all
  end
end
