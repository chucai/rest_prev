class ApiController < ApplicationController
  def show
    #reply = {
    #  :result => "ok"
    #}
    url = request.original_fullpath 
    method = if request.delete?
               "delete"
             elsif request.post?
               "post"
             elsif request.put?
               "put"
             else
               "get"
             end

    reply = Interface.fetch_result(url, method)
    render :json => reply.to_json
  end
end
