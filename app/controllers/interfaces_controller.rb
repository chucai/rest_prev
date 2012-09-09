# -*- encoding: utf-8 -*-
class InterfacesController < ApplicationController

  def index
    @interfaces = Interface.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @interfaces }
    end
  end

  def show
    respond_to do |format|
      format.html {
        @interface = Interface.find(params[:id])
      }
      format.json { 
      }
    end
  end

  # GET /interfaces/new
  # GET /interfaces/new.json
  def new
    @interface = Interface.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @interface }
    end
  end

  # GET /interfaces/1/edit
  def edit
    @interface = Interface.find(params[:id])
  end

  # POST /interfaces
  # POST /interfaces.json
  def create
    @interface = Interface.new(params[:interface])

    respond_to do |format|
      if @interface.save
        format.html { redirect_to root_url, notice: '保存成功.' }
        format.json { render json: @interface, status: :created, location: @interface }
      else
        format.html { render action: "new" }
        format.json { render json: @interface.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /interfaces/1
  # PUT /interfaces/1.json
  def update
    @interface = Interface.find(params[:id])

    respond_to do |format|
      if @interface.update_attributes(params[:interface])
        format.html { redirect_to @interface, notice: 'Interface was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @interface.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interfaces/1
  # DELETE /interfaces/1.json
  def destroy
    @interface = Interface.find(params[:id])
    @interface.destroy

    respond_to do |format|
      format.html { redirect_to interfaces_url }
      format.json { head :no_content }
    end
  end
end
